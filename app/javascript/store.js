// src/store.js
import { configureStore } from "@reduxjs/toolkit";
import greetingReducer from "./redux/greeting/greeting";

const store = configureStore({reducer: greetingReducer});

export default store;
