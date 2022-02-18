
type State = {
  counter: number;
  //When writing Typescript you should not use optional values for your state (?),
  // or use undefined in a union type. In a serializable state store world null is the value indicating “there is no value”
  name: string | null;
};

export const state: State = {
  counter: 0,
  name:null,
};
