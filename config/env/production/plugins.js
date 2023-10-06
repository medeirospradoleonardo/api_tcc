module.exports = {
  //
  graphql: {
    enabled: true,
    config: {
      defaultLimit: 100,
      endpoint: '/graphql',
      playgroundAlways: false,
      shadowCRUD: true,
      depthLimit: 100,
      amountLimit: 10000,
      disabledPlugins: [],
      disabledExtensions: [],
      apolloServer: {
        tracing: false,
        introspection: true,
      },
    },
  }
};