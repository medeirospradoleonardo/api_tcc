module.exports = ({ env }) => ({
  email: {
    config: {
      provider: 'nodemailer',
      providerOptions: {
        host: env('SMTP_HOST', 'smtp.gmail.com'),
        port: env('SMTP_PORT', 587),
        auth: {
          user: env('SMTP_USERNAME'),
          pass: env('SMTP_PASSWORD'),
        },
      },
      settings: {
        defaultFrom: env('SMTP_USERNAME'),
        defaultReplyTo: env('SMTP_USERNAME'),
      },
    },
  }, 
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
});