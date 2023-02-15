/*
 * Note 1: Bootstrap, by default, only supports drop-down functionality
 * in their menus by click, and NOT by hover. As such, react-bootstrap's
 * drop down menu components only drop down by click. This is a design decision,
 * which you can read about here: https://markdotto.com/2012/02/27/bootstrap-explained-dropdowns/
 * We've decided to follow this principle in the generic template. Obviously do whatever the
 * client wants.
 *
 * Note 2: We have decided against using react-bootstrap's drop-down components in this nav menu.
 * They just didn't seem flexible enough in their mobile implementation. The hamburger menu didn't
 * handle state well enough (it remains active after clicking even when the menu is closed),
 * among other things. We wanted better hamburger menu animation, and also wanted an overlay.
 * So we still use bootstrap 5 css classes wherever possible, but not the react-bootstrap
 * compoments.
 *
 */

import classNames from "classnames";
import Link from "next/link";
import { useRouter } from "next/router";
import React, { useState } from "react";

import useUser from "@/lib/auth/useUser";
import fetchJson from "@/lib/json/fetchJson";
import { useResetRecoilState } from "recoil";
import { catState, dogState, owlState } from "@/components/Settings/atoms";

import { NAME } from "./constants";
import styles from "./styles.module.scss";

const NavBar = (): JSX.Element => {
  const { user, mutateUser } = useUser();
  const router = useRouter();

  const [navToggled, setNavToggled] = useState(false);
  const [accountDropdownToggled, setAccountDropdownToggled] = useState(false);

  const KEY_ENTER = 13;
  const KEY_SPACE = 32;

  const handleKeyboardEventToggleNav = (e: React.KeyboardEvent): void => {
    switch (e.which) {
      case KEY_SPACE:
      case KEY_ENTER: {
        e.stopPropagation();
        setNavToggled(!navToggled);
        break;
      }
      default:
        break;
    }
  };

  const handleKeyboardEventToggleAccountDropdown = (
    e: React.KeyboardEvent
  ): void => {
    switch (e.which) {
      case KEY_SPACE:
      case KEY_ENTER: {
        e.stopPropagation();
        setAccountDropdownToggled(!accountDropdownToggled);
        break;
      }
      default:
        break;
    }
  };

  const resetCats = useResetRecoilState(catState);
  const resetDogs = useResetRecoilState(dogState);
  const resetOwls = useResetRecoilState(owlState);

  return (
    <>
      <nav
        className={classNames(
          "navbar",
          "navbar-expand-lg",
          "navbar-dark",
          "bg-dark",
          {
            [styles.navigation as string]: true,
          }
        )}
      >
        <div className="container">
          <Link href="/" className="navbar-brand">
            Sample Project
          </Link>

          {/* Mobile Nav Toggle Button */}
          <div
            className={classNames("bg-dark", styles.nav_toggle, {
              [styles.active as string]: navToggled,
            })}
            onClick={() => setNavToggled(!navToggled)}
            onKeyPress={handleKeyboardEventToggleNav}
            tabIndex={0}
          >
            <span className={styles.icon_bar} />
            <span className={styles.icon_bar} />
            <span className={styles.icon_bar} />
          </div>

          <div
            className={classNames("navbar-collapse", "collapse", {
              show: navToggled,
            })}
          >
            <div className={classNames("me-auto", "navbar-nav")}>
              <Link href="/features" className="nav-link">
                Features
              </Link>
            </div>
            <div className="navbar-nav">
              {user?.isLoggedIn === false && (
                <Link href="/login" className="nav-link">
                  Login
                </Link>
              )}

              {user?.isLoggedIn === true && (
                <div
                  className={classNames("nav-item", "dropdown", {
                    show: accountDropdownToggled,
                  })}
                >
                  <a
                    id="collasible-nav-dropdown"
                    className={classNames("dropdown-toggle", "nav-link")}
                    onClick={() =>
                      setAccountDropdownToggled(!accountDropdownToggled)
                    }
                    onKeyPress={handleKeyboardEventToggleAccountDropdown}
                  >
                    Account
                  </a>
                  <div
                    className={classNames("dropdown-menu", {
                      show: accountDropdownToggled,
                    })}
                  >
                    <Link href="/profile-sg" className="dropdown-item">
                      Profile (SG)
                    </Link>
                    <Link href="/profile-ssr" className="dropdown-item">
                      Profile (SSR)
                    </Link>
                    <Link href="/settings" className="dropdown-item">
                      Settings
                    </Link>
                    <hr className="dropdown-divider" />
                    <Link
                      href="/api/logout"
                      className="dropdown-item"
                      onClick={async (e) => {
                        e.preventDefault();

                        resetCats();
                        resetDogs();
                        resetOwls();

                        mutateUser(
                          await fetchJson("/api/logout", { method: "POST" }),
                          false
                        );
                        router.push("/login");
                      }}
                    >
                      Logout
                    </Link>
                  </div>
                </div>
              )}
            </div>
          </div>
        </div>
      </nav>
      <div
        className={classNames(styles.nav_overlay, {
          [styles.active as string]: navToggled,
        })}
        onClick={() => setNavToggled(!navToggled)}
        onKeyPress={handleKeyboardEventToggleNav}
        tabIndex={0}
      />
    </>
  );
};

NavBar.displayName = NAME;
export default NavBar;
