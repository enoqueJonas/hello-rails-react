import { createAsyncThunk } from "@reduxjs/toolkit";
import { GREETINGS_RETRIEVED } from "./greeting";

const getGreetings = createAsyncThunk(GREETINGS_RETRIEVED, async () => {
    const res = await fetch('/greetings/random', {
    }).then((response) => response.json());
    return res.greeting;
});

export default getGreetings