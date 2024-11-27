const path = require('path');
const webpack = require('webpack');

const webExtensionConfig = {
  mode: 'none',
  target: 'webworker',
  entry: {
    extension: './src/extension.ts'
  },
  output: {
    filename: '[name].js',
    path: path.join(__dirname, './dist/web'),
    libraryTarget: 'commonjs',
    devtoolModuleFilenameTemplate: '../../[resource-path]'
  },
  resolve: {
    mainFields: ['browser', 'module', 'main'],
    extensions: ['.ts', '.js'],
    fallback: {
      assert: require.resolve('assert')
    }
  },
  module: {
    rules: [
      {
        test: /\.ts$/,
        exclude: /node_modules/,
        use: [
          {
            loader: 'ts-loader'
          }
        ]
      }
    ]
  },
  plugins: [
    new webpack.ProvidePlugin({
      process: 'process/browser'
    })
  ],
  externals: {
    vscode: 'commonjs vscode'
  },
  performance: {
    hints: false
  },
  devtool: 'nosources-source-map'
};
module.exports = [webExtensionConfig];