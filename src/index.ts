// Hey Emacs, this is -*- coding: utf-8 -*-

import * as createGraphqlRouter from '@arangodb/foxx/graphql';

import * as graphql from 'graphql';

import schemaExequtable from './graphql/schema';

const router = createGraphqlRouter({
  schema: schemaExequtable,
  graphiql: true,
  graphql: graphql,
}).summary('GraphQL Endpoint')
  .description('GraphQL endpoint demo for ArangoDB Foxx ' +
               'implemented using TypeScript and Apollo.');

module.context.use(router);
