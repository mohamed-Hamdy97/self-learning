
export default function counterReducer(
  state: {count: 0},
  action: {type: 'increment' | 'decrement'},
) {
  switch (action.type) {
    case 'increment':
      return {count: ++state.count};
    case 'decrement':
      return {count: --state.count};
    default:
      return state;
  }
}
