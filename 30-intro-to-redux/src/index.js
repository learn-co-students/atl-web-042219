import React, { Component } from "react";
import ReactDOM from "react-dom";
import "./index.css";
import logo from "./logo.svg";
import "./App.css";
import store from './store';
import { decrementAction, incrementAction, multiplyAction } from './actions';

let App = () => (
  <div className="App">
    <Header />
    <Counter />
  </div>
)

class Header extends Component {
  componentDidMount() {
    store.subscribe(() => this.forceUpdate())
  }

  renderDescription = () => {
    const remainder = store.getState().count % 5;
    const upToNext = 5 - remainder;
    return `The current count is less than ${store.getState().count + upToNext}`;
  };

  render() {
    return (
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <h1 className="App-title">Welcome to React</h1>
        <h3>{this.renderDescription()}</h3>
      </header>
    );
  }
}

class Counter extends Component {
  componentDidMount() {
    store.subscribe(() => this.forceUpdate())
  }

  render() {
    return (
      <div className="Counter">
        <h1>{store.getState().count}</h1>
        <button onClick={() => decrementAction(5)}> - 5 </button>
        <button onClick={() => decrementAction(1)}> - </button>
        <button onClick={incrementAction}> + </button>
        <button onClick={() => multiplyAction(2)}> * 2 </button>
      </div >
    );
  }
}

ReactDOM.render(<App />, document.getElementById("root"));
