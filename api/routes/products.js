const express = require('express');
const router = express.Router();
const { getProducts, createProduct, updateProduct } = require('../controllers/products');


router.route('/').get(getProducts).post(createProduct);

router.route('/:id').put(updateProduct);

module.exports = router;