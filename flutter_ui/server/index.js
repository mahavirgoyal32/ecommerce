console.log("hello world");
// (print)


const express = require('express');
const authRouter = require('./routes/auth');

const mongoose= require('mongoose');
const adminRouter = require('./routes/admin');
const productRouter = require('./routes/product');

const PORT = 3000;

const app = express();

const DB = "mongodb+srv://mahavir:findi123@cluster0.b2awd.mongodb.net/?retryWrites=true&w=majority";


app.use(express.json());
app.use(authRouter);
app.use(adminRouter);
app.use(productRouter);




// connections

mongoose.connect(DB).then(()=>{
console.log('connection successfull');   
}).catch(
    e=>{
        console.log(e);
    }
);


app.listen(PORT, "0.0.0.0", ()=>    {
    console.log('connected at port ' + PORT +'hello' );
})
