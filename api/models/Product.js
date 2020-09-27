const mongoose = require('mongoose');

const ProductSchema = new mongoose.Schema({
    name: {
        type: String,
    },
    price: {
        type: Number,
    },
    dimensions: {
        type: String,
    },
    productDescription: {
        type: String
    },
    image: {
        type: [String]
    },
    isFavorite: {
        type: Boolean
    }

});


module.exports = mongoose.model('Product', ProductSchema);