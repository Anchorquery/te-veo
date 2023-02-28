const mongoose = require('mongoose');
const ServiceSchema = new mongoose.Schema(
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
    x_latitude: {
      type: String,
      required: true,
    },
    y_latitude: {
      type: String,
      required: true,
    },

    image: {
      type: String,
    },
    category: {
      ref: 'categories',
      type: mongoose.Types.ObjectId,
    },
    subcategory: {
      ref: 'subCategories',
      type: mongoose.Types.ObjectId,
    },
  },
  {
    timestamps: true,
    versionKey: false,
    strictPopulate: false,
    autopopulate: true,
  },
);
ServiceSchema.plugin(require('mongoose-autopopulate'));
module.exports = mongoose.model('services', ServiceSchema);
