const express = require('express');
const dotenv = require('dotenv');
const connectDb = require('./config/db');
const errorHandler = require('./middlewares/error');

dotenv.config({ path: './config/config.env' });

//connect to db
connectDb();

const products = require('./routes/products');


const app = express();

app.use(express.json());
app.use('/products', products);

app.use(errorHandler);


const PORT = process.env.PORT || 5000;

app.listen(PORT, console.log(`Server running in ${PORT}`));