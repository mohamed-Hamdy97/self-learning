import {createStore} from 'redux';
import {useDispatch} from 'react-redux';
import appReducers from './reducers/index';


export const storeConfige = () => {
  const store = createStore(appReducers);

  return store;
};
