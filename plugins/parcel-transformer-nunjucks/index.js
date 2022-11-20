const plugins = require('@parcel/plugin')
const Nunjucks = require('nunjucks')
const NunjucksSpacelessExtension = require("nunjucks-tag-spaceless")

module.exports = new plugins.Transformer({
  async transform({ asset }) {
    const env = Nunjucks.configure('./src', { autoescape: false });
    env.addExtension("spaceless", new NunjucksSpacelessExtension());
    let code = await asset.getCode();
    let result = Nunjucks.renderString(code, {
      app: {
        assetPath: '../assets'
      }
    });
    asset.type = 'html';
    asset.setCode(result);
    return [asset];
  },
});
