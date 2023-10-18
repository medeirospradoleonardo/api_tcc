// ref doc: https://docs.strapi.io/developer-docs/latest/development/plugins-extension.html#extending-a-plugin-s-interface
module.exports = (plugin) => {
  plugin.controllers.auth.verifyToken = async (ctx) => {
    // get token froml the POST request
    const {token, name, email} = ctx.request.body;

    // check toek requirement
    if (!token) {
      return ctx.badRequest('`token` param is missing')
    }

    try {
      // decrypt the jwt
      const obj = await strapi.plugins[
        'users-permissions'
      ].services.jwt.verify(token);
      
      const data = await strapi.entityService.findOne('plugin::users-permissions.user', obj.id)

      if(!data || data.username != name || data.email != email){
        return ctx.badRequest();
      }

      return obj;
    } catch (err) {
      // if the token is not a valid token it will throw and error
      return ctx.badRequest(err.toString());
    }
  }

  plugin.routes['content-api'].routes.push({
    method: 'POST',
    path: '/auth/verifyToken',
    handler: 'auth.verifyToken',
    config: {
      prefix: ''
    }
  });

  return plugin
}