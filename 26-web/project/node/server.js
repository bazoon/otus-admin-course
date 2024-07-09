const fastify = require('fastify')({
  logger: true
});

fastify.get('/', async (request, reply) => {
  reply.type('text/html')
  return 'Hello, World!'
});

const start = async () => {
  try {
    await fastify.listen({ port: 4000, host: '0.0.0.0' });
    console.log(`Server listening on ${fastify.server.address().port}`);
  } catch (err) {
    fastify.log.error(err);
    process.exit(1);
  }
};

start();
