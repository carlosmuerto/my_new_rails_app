import React, { Fragment, useState, useEffect } from 'react';
import axios from 'axios';

function Greeting() {
    const [greeting, setGreeting] = useState([]);

    const loadData = async () => {
        const response = await axios.get('/api/v1/greeting/');
        setGreeting(response.data.text);
        console.log(response)
    };

    useEffect(() => {
        loadData();
    }, []);

    return (
        <h1>{greeting}</h1>
    );
}

export default Greeting;
