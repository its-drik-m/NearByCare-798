const { environment } = require('@rails/webpacker')

// Preventing Babel from transpiling NodeModules packages
environment.loaders.delete('nodeModules');
module.exports = environment

const webpack = require('webpack')

environment.plugins.prepend(
  'Provide',
  new webpack.ProvidePlugin({
    jQuery: 'jquery',
  })
)

module.exports = environment
