const initState = {count: 1};

export default function counterReducer(
  state = initState,
  action: {type: 'increment' | 'decrement'; payload: number},
) {
  console.log('ssssss', action);

  switch (action.type) {
    case 'increment':
      return {
        ...state,
        count: state.count + action.payload,
      };
    case 'decrement':
      return {
        ...state,
        count: state.count - action.payload,
      };
    default:
      return state;
  }
}
