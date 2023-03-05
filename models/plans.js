const mongoose = require('mongoose');
const mongoosePaginate = require('mongoose-paginate-v2');
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
PlanSchema.plugin(mongoosePaginate);
module.exports = mongoose.model('plans', PlanSchema);
