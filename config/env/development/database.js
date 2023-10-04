const parse = require('pg-connection-string').parse;
const config = process.env.DATABASE_URL ? parse(process.env.DATABASE_URL) : {
  host: '127.0.0.1',
  port: 5432,
  database: 'strapi_tcc',
  user: 'postgres',
  password: '123456'
};

module.exports = () => ({
  connection: {
    client: 'postgres',
    connection: {
      host: config.host,
      port: config.port,
      database: config.database,
      user: config.user,
      password: config.password,
      ssl: false
    },
    pool: {
      min: 0
    },
    debug: false,
  },
});