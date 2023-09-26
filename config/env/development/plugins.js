module.exports = {
  //
  graphql: {
    config: {
      defaultLimit: 100,
      endpoint: '/graphqlapi',
    },
    playgroundAlways: false,
    shadowCRUD: true,
    depthLimit: 7,
    amountLimit: 10000,
    disabledPlugins: [],
    disabledExtensions: [],
    apolloServer: {
      tracing: true,
    }
  }
};