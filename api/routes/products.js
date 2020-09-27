const express = require('express');
const router = express.Router();
const {
    getProducts,
    createProduct,
    updateProduct,
    productPhotoUpload
} = require('../controllers/products');


router.route('/').get(getProducts).post(createProduct);

router.route('/:id').put(updateProduct);

router.route('/:id/photo').put(productPhotoUpload);

module.exports = router;