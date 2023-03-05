const mongoose = require('mongoose');
const mongoosePaginate = require('mongoose-paginate-v2');
const SubCategorySchema = new mongoose.Schema(
  {
    title: {
      type: String,
      unique: true,
      required: true,
    },
    description:{
      type: String
    },
    //añado relacion con categorias

    category: {
      type: mongoose.Schema.Types.ObjectId,
      ref: 'categories',
      required: true,
    },
    // añado campo picture
    picture: {
      type: String,
      default: '',
    },
    status: {
      type: Boolean,
      default: true,
    },
  },
  {
    timestamps: true,
    versionKey: false,
  },
);

SubCategorySchema.plugin(mongoosePaginate);
module.exports = mongoose.model('subCategories', SubCategorySchema);
