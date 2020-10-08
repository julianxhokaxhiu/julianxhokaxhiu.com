const path = require('path')
const Nunjucks = require('nunjucks')
const NunjucksSpacelessExtension = require("nunjucks-tag-spaceless")
const env = Nunjucks.configure('./src')

env.addExtension("spaceless", new NunjucksSpacelessExtension());

module.exports = {
  data: {
    app: {
      assetPath: '../assets'
    }
  },
  env
}