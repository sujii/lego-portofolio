# lego

This design paradigm leverages Next.js, Prisma, and GraphQL to automate model and interface generation while centralizing communication between clients and the edge. It simplifies software development, ensures unified error management across packages, reduces development time, and optimizes resource usage for efficient and streamlined operations.

This Product is **ProtoTypes** of [LEGOJS](https://github.com/VVVVISE/legojs).

## NOW UNDER WIP - alpha or less:

## 1. Tech

### CoreMiddleWares:

- [Turborepo (inclued Nextjs, React)](https://turbo.build/repo/docs)
- [nodejs@23.3.0: API Documentation](https://nodejs.org/docs/latest/api/)
- [Berry (yarn@4.4.1)](https://github.com/yarnpkg/berry)
  - I like PNPM, but it wears on me at times.

### Cloud:

- [Doppler](https://www.doppler.com/)
- DigitalOcean
- AppWrite (or Maybe SupaBase)
- Sentry

### DB:

- Prisma (ORM)
- SQLite (node@22.7.0 native-API)
  - ClientSide
- MySQL, MongoDB
  - ClstgSide

### Schemes:

- GraphQL

### Apps:

1. ApiClients
    - ApiClients generates **Interfaces**, **Modules**, **Functions**, and **Hooks** from **GraphQL**.
2. App
    - Web application itself
    - [ComponentsList](https://github.com/sujii/lego/issues/1)
3. HeadLessAPI (Not Standby)
    - The package will be able to manipulate Prisma's DB schema from the GUI, but currently it is simply Prisma.

### Packages:

1. Constants
2. Styles
3. Statics
4. TypeScriptConfig
5. **[OOUI](https://github.com/sujii/ooui)**

## 2. Setup

### Install yarn@4.4.1 (berry):

```sh
corepack enable
yarn init -2
yarn set version stable
```

### Create Workspaces, with Setup Developpers Specifications (with [Doppler](https://www.doppler.com/)):

```sh
pwd
$HOME/Projects/lego

make init
```

## 3. Build

```sh
pwd
$HOME/Projects/lego

# To Build, All Apps and Packages.
yarn build
```

## 4. Directives

- The arrangement on the directory does not imply the structure of the package as it is. 
- **Packages have a domain and are invoked as a thin domain model** with up to two layers.

## License

GNU GENERAL PUBLIC LICENSE
