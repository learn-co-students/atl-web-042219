import menuReducer from './menu';
import orderReducer from './order';
import { combineReducers } from 'redux';

export default combineReducers({
  menu: menuReducer,
  order: orderReducer
});