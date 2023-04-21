import { useDispatch, useSelector } from 'react-redux';
import getGreetings from './redux/greeting/greeting-api';
import React, { useEffect } from 'react';

const Greeting = () => {
    const dispatch = useDispatch();
    const greetingState = useSelector((state) => state)

    useEffect(() => {
        dispatch(getGreetings())
    }, [])
    return (<h1>{greetingState.greeting} </h1>);
}

export default Greeting;