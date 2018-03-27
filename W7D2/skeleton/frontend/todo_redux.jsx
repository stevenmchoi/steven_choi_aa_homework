import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

// Phase 1:
// const addLoggingToDispatch = (store) => {
//   const dispatch = store.dispatch;
//
//   return ((action) => {
//     console.log(store.getState());
//     console.log(action);
//     dispatch(action);
//     console.log(store.getState());
//   });
// };

// Phase 2:
const addLoggingToDispatch = (store) => (next) => (action) => {
  console.log(store.getState());
  console.log(action);
  next(action);
  console.log(store.getState());
};

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  const store = configureStore(preloadedState);
  store.dispatch = addLoggingToDispatch(store);

  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);
});
