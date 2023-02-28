const mongoose = require('mongoose');
const UserSchema = new mongoose.Schema(
  {
    name: {
      required: true,
      type: String,
    },
    surname: {
      required: true,
      type: String,
    },
    avatar: {
      type: String,
      required: false,
    },
    email: {
      type: String,
      required: true,
      unique: true,
    },
    phone: {
      type: Number,
    },
    password: {
      type: String,
    },
    token: {
      type: String,
    },
    status: {
      type: Boolean,
      default: false,
    },
    role: {
      type: String,
      enum: ['user', 'admin'],
      default: 'user',
    },
    confirm: {
      type: Boolean,
      default: false,
    },
  },
  {
    timestamps: true,
    versionKey: false,
  },
);

module.exports = mongoose.model('users', UserSchema);
