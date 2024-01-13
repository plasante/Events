import { combineReducers } from "redux";
import counterReducer from "./counterReducer";
import messageReducer from "./messageReducer";

const rootReducer = combineReducers({
  counter: counterReducer,
  message: messageReducer,
});

export default rootReducer;
