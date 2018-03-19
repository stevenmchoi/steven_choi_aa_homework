const path = require('path');

module.exports = {
  entry: './main.js',
  output: {
    filename: './dist/bundle.js',
    path: path.resolve(__dirname, 'dist')
  }
};
