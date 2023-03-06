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
    newOrUsed: {
      type: String,
      enum: ['new', 'used'],
      default: 'new',
    },
    usedState: {
      type: String,
      enum: ['1_a_2_semanas_+', '6_meses_+', '1_mes_+', '8_meses_+', '3_meses_+', 'Más_de_un_año']
    },
    state: {
      type: Boolean,
      default: true,
    },
    location: {
      type: { type: String, default: 'Point' },
      coordinates: { type: [Number], default: [0, 0] }
    },
    //añado descripcion de la ubicacion
    locationDescription: {
      type: String,
    },
    quantity: {
      type: Number,
      min: 0,
      default: 1,
    },
    images: [
      {
        type: String,
      },
    ],
    seller: {
      ref: 'users',
      type: mongoose.Types.ObjectId,
      required: true,
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
