import { createStore } from 'redux';

const initialState = {
  count: 42
}

const rootReducer = (currentState = initialState, action) => {
  console.log(currentState)
  console.log(action)
  switch (action.type) {
    case "ADD": {
      return { count: currentState.count + 1 }
    }
    case "SUB": {
      return { count: currentState.count - action.amount }
    }
    case "MUL": {
      return { count: currentState.count * action.amount }
    }
    default: {
      return currentState
    }
  }
}

export default createStore(
  rootReducer,
  window.__REDUX_DEVTOOLS_EXTENSION__ && window.__REDUX_DEVTOOLS_EXTENSION__()
);
