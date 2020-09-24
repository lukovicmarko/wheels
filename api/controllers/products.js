const Product = require('../models/Product');

exports.getProducts = async (req, res, next) => {
    const products = await Product.find();
    res.status(200).json({
        success: true,
        data: products,
        count: products.length,
    });
}

exports.createProduct = async (req, res, next) => {
    const product = await Product.create(req.body);
    res.status(201).json({
        success: true,
        data: product
    });
}

exports.updateProduct = async (req, res, next) => {
    const product = await Product.findByIdAndUpdate(req.params.id, req.body, {
        new: true,
        runValidators: true
    });

    if (!product) {
        return res.status(400).json({ success: false });
    }

    res.status(200).json({
        success: true,
        data: product
    });
}