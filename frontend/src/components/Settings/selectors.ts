/*
 * Selectors are simply the pure functions that accept atoms, execute any
 * logical operations, and return a result.
 */

import { selector } from "recoil";
import { catState, dogState, owlState } from "./atoms";

export const getCatState = selector({
  key: "getCatState", // unique ID (with respect to other atoms/selectors)
  get: ({ get }) => {
    const name = get(catState);
    if (name) {
      return "Checked";
    }
    return "Not checked";
  },
});

export const getDogState = selector({
  key: "getDogState", // unique ID (with respect to other atoms/selectors)
  get: ({ get }) => {
    const name = get(dogState);
    if (name) {
      return "Checked";
    }
    return "Not checked";
  },
});

export const getOwlState = selector({
  key: "getOwlState", // unique ID (with respect to other atoms/selectors)
  get: ({ get }) => {
    const name = get(owlState);
    if (name) {
      return "Checked";
    }
    return "Not checked";
  },
});
