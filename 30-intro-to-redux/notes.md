# JS -> React -> Redux

* We use React to have a better way of organizing and reusing front-end code: Components.
  * Another substantial benefit is that we stop worrying about manually updating the DOM.
* We use Redux to "make views stupid again".
  * I.e. A component should simply display information and notify of user actions.
  * How does Redux do this? It takes over state management from React.
  * A side benefit is that components _become_ more reusable and easier to refactor.
