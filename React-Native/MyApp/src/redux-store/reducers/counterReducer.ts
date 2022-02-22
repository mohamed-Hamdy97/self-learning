import {createSlice} from '@reduxjs/toolkit';
import {logout} from './authSlice';

const initState = {count: 1};

export function counterReducer(
  state = initState,
  action: {type: 'increment' | 'decrement'; payload: number},
) {
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

//note
// Redux Toolkit allows us to write "mutating" logic in reducers. It
// doesn't actually mutate the state because it uses the Immer library,
// which detects changes to a "draft state" and produces a brand new
// immutable state based off those changes

//using toolkit
export const counterSlice = createSlice({
  name: 'counter',
  initialState: initState,
  reducers: {
    increment: (state, action) => {
      state.count += action.payload;
    },
    decrement: (state, action) => {
      state.count -= action.payload;
    },
  },
  extraReducers: builder => {
    builder.addCase(logout, state => {
      state.count = 0;
    });
  },
});

// Action creators are generated for each case reducer function
export const {increment, decrement} = counterSlice.actions;

export default counterSlice.reducer;
