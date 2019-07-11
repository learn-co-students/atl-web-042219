import store from './store';

let decrementAction = (amount) => store.dispatch({ type: "SUB", amount })
let incrementAction = () => store.dispatch({ type: "ADD" })
let multiplyAction = (amount) => store.dispatch({ type: "MUL", amount })

export { decrementAction, incrementAction, multiplyAction }
