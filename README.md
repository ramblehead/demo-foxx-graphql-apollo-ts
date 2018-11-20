# GraphQL Demo Foxx Service with TypeScript and Apollo

This GraphQL demo service for ArangoDB 3.3 and higher is modelled after [demo-graphql](https://github.com/arangodb-foxx/demo-graphql).

The GraphQL logic is implemented with [TypeScript](https://www.typescriptlang.org/) using [Apollo](https://www.apollographql.com/) library.

## Installation

It is assumed that node, npm, npx and zip are already installed. Current building scripts are implemented with bash and only tested on Linux with node 10.9.0 and npm/npx 6.2.0

To build a zip package which could be installed as ArangoDB service, run the following commands:

``` shell
# Get the source tree
$ git clone https://github.com/ramblehead/demo-foxx-graphql-apollo-ts.git

# Install required node libraries
$ cd demo-foxx-graphql-apollo-ts
$ npm i

# Build ArangoDB service package
$ ./.project/make
```

After building is complete, the ArangoDB service package should be created at ```dist/demo-foxx-graphql-apollo-ts.zip```

To cleanup use the following command:
``` shell
$ ./.project/clean
```
