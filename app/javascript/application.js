//= require_tree .
import React, { useEffect } from 'react';
import ReactDOM from 'react-dom';
import { useDispatch, useSelector } from 'react-redux';
import getGreetings from './redux/greeting/greeting-api';
import { Provider } from 'react-redux';
import store from './store';

const App = () => {
  const dispatch = useDispatch();
  const greetingState = useSelector((state) => state)

  useEffect(() => {
    dispatch(getGreetings())
  }, [])
  return (<h1>Greet: {greetingState.greeting} </h1>);
}

ReactDOM.render(
  <Provider store={store}>
    <App />
  </Provider>,
  document.getElementById('root'),
);