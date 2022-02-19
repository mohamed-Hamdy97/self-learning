const initState = {count: 0};

export default function counterReducer(
  state = initState,
  action: {type: 'increment' | 'decrement'},
) {
  console.log('ssssss', action);

  switch (action.type) {
    case 'increment':
      return {
        ...state,
        count: state.count + 1,
      };
    case 'decrement':
      return {
        ...state,
        count: state.count + 1,
      };
    default:
      return state;
  }
}
