const mongoose = require('mongoose');
const CategorySchema = new mongoose.Schema(
  {
    title: {
      type: String,
      unique: true,
      required: true,
    },
    status: {
      type: Boolean,
      default: true,
    },
    subCategory: [
      {
        ref: 'subCategories',
        type: mongoose.Types.ObjectId,
      },
    ],
  },
  {
    timestamps: true,
    versionKey: false,
  },
);
module.exports = mongoose.model('categories', CategorySchema);
