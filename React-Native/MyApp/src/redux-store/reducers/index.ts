import {combineReducers} from 'redux';
import authSlice from './authSlice';
import counterSlice from './counterReducer';

export default combineReducers({
  counter: counterSlice,
  auth: authSlice,
});
