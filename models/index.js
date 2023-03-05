const models = {
  catergoryModel: require('./categories'),
  subCategoryModel: require('./subCategories'),
  productModel: require(`./products`),
  userModel: require(`./users`),
  serviceModel: require(`./services`),
  planModel: require(`./plans`),
};
module.exports = models;
