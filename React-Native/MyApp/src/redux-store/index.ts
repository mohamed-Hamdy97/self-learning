import {createStore} from 'redux';
import appReducers from './reducers/index';

export const storeConfige = () => {
  const store = createStore(appReducers);

  return store;
};
