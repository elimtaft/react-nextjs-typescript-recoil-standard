import { AppProps } from "next/app";
import React from "react";
import { RecoilRoot } from "recoil";
import { SWRConfig } from "swr";

import fetchJson from "@/lib/json/fetchJson";

import "public/css/global.scss";

function MyApp({ Component, pageProps }: AppProps) {
  return (
    <SWRConfig
      value={{
        fetcher: fetchJson,
        onError: (err) => {
          console.error(err);
        },
      }}
    >
      <RecoilRoot>
        <Component {...pageProps} />
      </RecoilRoot>
    </SWRConfig>
  );
}

export default MyApp;
