console.log("hello world");
// (print)
const express = require('express');
// import package express
const PORT = 3000;

const app = express();

// creating an API


app.listen(PORT, "0.0.0.0", ()=>    {
    console.log('connected at port ' + PORT +'hello' );
})
