# AutoDapp

# Running

in the sql-proxy-rs/ directory

```
# Shell 1
$ docker-compose up

# Shell 2
$ make shell
$RUST_LOG=trace cargo run --example counter -- 0.0.0.0:5432 postgres-server::5432 postgres

# Shell 3
$ cd autodapp/
$ make discourse
```


# Demos

To run the demos we've implemented (Discourse and Mediawiki),
you can use the following docker-compose commands:

```bash
$ make discourse    # discourse demo (based on postgres)
OR
$ make mediawiki    # mediawiki demo (based on mariadb)
$ make mediawiki-db # migrate db
```
