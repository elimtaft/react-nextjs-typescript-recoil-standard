import axios from "axios";
import { InferGetStaticPropsType } from "next";
import React from "react";
import ReactMarkdown from "react-markdown";
import { useRecoilValue } from "recoil";
import Link from "next/link";

import Layout from "@/components/Layout";
import {
  getCatState,
  getDogState,
  getOwlState,
} from "@/components/Settings/selectors";
import { ArticleData } from "@/lib/strapi/types";

export default function Home({
  data,
}: InferGetStaticPropsType<typeof getStaticProps>) {
  const catState = useRecoilValue(getCatState);
  const dogState = useRecoilValue(getDogState);
  const owlState = useRecoilValue(getOwlState);

  if (data != null) {
    return (
      <Layout>
        <h1>{data.title}</h1>
        <div>
          <ReactMarkdown>{data.content}</ReactMarkdown>
        </div>

        <h3>Strapi</h3>
        <p>Here&apos;s how the data comes from Strapi:</p>
        <pre>{JSON.stringify(data, null, 2)}</pre>

        <h3>Global state</h3>
        <p>
          We are using{" "}
          <a href="https://recoiljs.org/" target="_blank" rel="noreferrer">
            recoil
          </a>{" "}
          for global state management. Below is an example of global settings
          stored in recoil that you can modify on the{" "}
          <Link href="/settings">Settings page</Link>. After checking items
          there, come back to this page to see that it picks up on them. Note
          that when you refresh the page, these settings are lost.
        </p>
        <p>
          Cat state: {catState} <br />
          Dog state: {dogState} <br />
          Owl state: {owlState} <br />
        </p>
      </Layout>
    );
  } else {
    return (
      <Layout>
        <h1>Sample Project</h1>
        <p>
          <strong>Note:</strong>You are seeing this because you have not set up
          the Strapi back-end. If you want to play around with Strapi, see the
          README.md for instructions on setting that up.
        </p>
        <p>
          Also see the README.md for how to set up a user so that you can test
          logging in and out, and test the statically-generated vs. server-side
          generated profile pages.
        </p>
      </Layout>
    );
  }
}

export async function getStaticProps() {
  let data: ArticleData = null;

  try {
    const response = await axios.get(
      `${process.env.STRAPI_BACKEND_URL}/api/pages?slug=strapi-sample-homepage-content`,
      {
        headers: {
          Accept: "application/json",
          Authorization: `Bearer ${process.env.STRAPI_API_TOKEN}`,
        },
        timeout: 500,
      }
    );

    data = response.data.data[0].attributes || null;
  } catch (error) {
    if (axios.isAxiosError(error)) {
      console.log(
        "axios error: ",
        `${error.code}: ${error.message}: ${error.response?.data}`
      );
    } else {
      console.log("error: ", error);
    }
  }

  return {
    props: {
      data,
    },
    revalidate: 60,
  };
}

// export const getStaticPaths: GetStaticPaths<{ slug: string }> = async() => {
//   return {
//     paths: [], // indicates that no page needs to be created at build time
//     fallback: "blocking" // indicates the type of fallback
//   };
// }
