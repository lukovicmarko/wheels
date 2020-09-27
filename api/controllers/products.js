const ErrorResponse = require('../utils/errorResponse');
const asyncHandler = require('../middlewares/async');
const Product = require('../models/Product');


exports.getProducts = asyncHandler(async (req, res, next) => {
    const products = await Product.find();
    res.status(200).json({
        success: true,
        data: products,
        count: products.length,
    });
});

exports.createProduct = asyncHandler(async (req, res, next) => {
    const product = await Product.create(req.body);
    res.status(201).json({
        success: true,
        data: product
    });
});

exports.updateProduct = asyncHandler(async (req, res, next) => {
    const product = await Product.findByIdAndUpdate(req.params.id, req.body, {
        new: true,
        runValidators: true
    });

    if (!product) {
        return next(
            new ErrorResponse(`Product not found with id of ${req.params.id}`, 404)
        )
    }

    res.status(200).json({
        success: true,
        data: product
    });
});