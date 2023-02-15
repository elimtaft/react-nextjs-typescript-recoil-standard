import { atom } from "recoil";

export const catState = atom({
  key: "catState", // unique ID (with respect to other atoms/selectors)
  default: false, // default value (aka initial value)
});

export const dogState = atom({
  key: "dogState", // unique ID (with respect to other atoms/selectors)
  default: false, // default value (aka initial value)
});

export const owlState = atom({
  key: "owlState", // unique ID (with respect to other atoms/selectors)
  default: false, // default value (aka initial value)
});
