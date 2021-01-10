const path = require("path");

module.exports = {
  mode: "development",
  devtool: false,
  entry: {
    main: path.resolve(__dirname, "src/js/index.js"),
  },
  output: {
    path:  path.resolve(__dirname, "dist/js"),
    filename: "daoistic.[contenthash:5].js",
  },
}
