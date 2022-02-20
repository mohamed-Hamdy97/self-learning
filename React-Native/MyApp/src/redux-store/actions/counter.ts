export const increaseCountAction = (value: number) => {
  return {
    type: 'increment',
    payload: value,
  };
};

export const decreaseCountAction = (value: number) => {
  return {
    type: 'decrement',
    payload: value,
  };
};
