const models = {
  catergoryModel: require('./categories'),
  subCatergoryModel: require('./subCategories'),
  productModel: require(`./products`),
  userModel: require(`./users`),
  serviceModel: require(`./services`),
  planModel: require(`./plans`),
};
module.exports = models;
