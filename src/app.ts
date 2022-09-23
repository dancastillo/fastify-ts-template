import 'dotenv/config';
import path, { join } from 'path';
import AutoLoad, {AutoloadPluginOptions} from '@fastify/autoload';
import fastify from 'fastify';
import {fileURLToPath} from 'url';

const __dirname = path.dirname(fileURLToPath(import.meta.url));

const app = fastify({
  logger: true,
});

app.register(AutoLoad, {
  dir: join(__dirname, 'plugins'),
})

app.register(AutoLoad, {
  dir: join(__dirname, 'routes'),
})

await app.ready((err) => {
  if (err) {
    console.log(err.message);
    throw err;
  }
});

app.listen({ port: Number(process.env.PORT), host: process.env.HOST }, (err, address) => {
  if (err) {
    console.log(err.message);
    process.exit(1);
  }
})

export default app;