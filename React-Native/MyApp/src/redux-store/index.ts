import {createStore} from 'redux';
import appReducers from './reducers/index';

//using toolkit
import {configureStore} from '@reduxjs/toolkit';
import counterSlice from './reducers/counterReducer';

export const storeConfige = () => {
  // const store = createStore(appReducers);

  //using toolkit
  const store = configureStore({
    reducer: appReducers,
    devTools: true,
  });

  return store;
};
