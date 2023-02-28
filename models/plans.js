const mongoose = require('mongoose');
const PlanSchema = new mongoose.Schema(
  {
    name: {
      type: String,
      unique: true,
      required: true,
    },
    price: {
      type: Number,
      Min: 0,
      required: true,
    },
    discount: {
      type: Number,
      Min: 0,
      required: true,
    },
  },
  {
    timestamps: true,
    versionKey: false,
  },
);
module.exports = mongoose.model('plans', PlanSchema);
