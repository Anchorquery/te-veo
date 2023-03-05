const mongoose = require('mongoose');
const mongoosePaginate = require('mongoose-paginate-v2');
const ProductSchema = new mongoose.Schema(
  {
    title: {
      type: String,
      required: true,
    },
    description: {
      type: String,
      required: true,
    },
    price: {
      type: Number,
      min: 0,
      required: true,
    },
    state: {
      type: Boolean,
      default: true,
    },
  /*  x_latitude: {
      type: String,
      required: true,
    },
    y_latitude: {
      type: String,
      required: true,
    },*/
    //añdo la localizacion del producto en el mapa con el tipo de dato Point de mongo db y añado el indice 2dsphere para que funcione la busqueda  geoespacial de mongo db , y añado longitud y latitud para que funcione la busqueda geoespacial de mongo db
    location: {
      type: { type: String, default: 'Point' },
      coordinates: { type: [Number], default: [0, 0] }
    },

    quantity: {
      type: Number,
      min: 0,
      default: 0,
    },
    image: {
      type: String,
    },
    category: {
      ref: 'categories',
      type: mongoose.Types.ObjectId,
      required: true,
    },
    subCategory: {
      ref: 'subCategories',
      type: mongoose.Types.ObjectId,
      required: true,
    },
  },
  {
    timestamps: true,
    versionKey: false,
    strictPopulate: false,
    autopopulate: true,
  },
);

// añado el indice 2dsphere para que funcione la busqueda  geoespacial de mongo db al campo location.coordinates y añado longitud y latitud para que funcione la busqueda geoespacial de mongo db

ProductSchema.index({ "location": '2dsphere' });





ProductSchema.plugin(mongoosePaginate);
module.exports = mongoose.model('products', ProductSchema);
