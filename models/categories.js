const mongoose = require('mongoose');
const  mongoosePaginate = require('mongoose-paginate-v2');
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
    }/*,
    subCategory: [
      {
        ref: 'subCategories',
        type: mongoose.Types.ObjectId,
      },
    ]*/,
    picture:{
      type:String,
      default:''
    },
    
    description:{
      type:String,
      default:''
    }

  },
  {
    timestamps: true,
    versionKey: false,
  },
);

CategorySchema.plugin(mongoosePaginate);
//const Category = mongoose.model('Category',CategorySchema);

module.exports = mongoose.model('categories', CategorySchema);
