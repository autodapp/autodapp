# AutoDapp

AutoDapp helps developers use existing, mature web stacks to build decentralized apps (dApps), enabling them to switch between a centralized cloud deployment and a decentralized deployment with only a single line of code change. AutoDapp can also be used to convert existing web apps into dApps. Let's AutoDapp-fy the Web!

Note: This is a project under active development and **does not work yet**. Don't use it.

# Running the development environment

```
# Shell 1
$ docker-compose up

# Shell 2
$ make shell
$ RUST_LOG=trace cargo run --example counter -- 0.0.0.0:5432 postgres-server::5432 postgres

# Shell 3
$ make discourse
```

# Demos

To run the demos, you can use the following docker-compose commands:

```bash
$ make discourse    # discourse demo (based on postgres)
OR
$ make mediawiki    # mediawiki demo (based on mariadb)
$ make mediawiki-db # migrate db
```
