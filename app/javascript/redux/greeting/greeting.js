// src/reducers/greetingReducer.js
export const GREETINGS_RETRIEVED = 'hello-rails-react/app/redux/greeting/GREETINGS_RETRIEVED';

const initialState = '';

function greetingReducer(state = initialState, action) {
    const {type, payload} = action
    switch (type) {
        case `${GREETINGS_RETRIEVED}/fulfilled`:
            return { ...state, greeting: payload };
        default:
            return state;
    }
}

export const getGreeting = () => ({
    type: GREETINGS_RETRIEVED,
    payload: {}
})

export default greetingReducer;
