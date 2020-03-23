.PHONY: shell psql mysql

shell:
	docker exec -it proxy /bin/bash

psql:
	docker exec -it postgres-server psql "postgresql://root:testpassword@proxy:5432/testdb?sslmode=disable"

mysql:
	docker exec -it mariadb-server mysql --host=proxy --user=root --password=testpassword testdb

tendermint:
	docker exec -it tendermint-node /bin/bash

discourse:
	docker-compose -f demo/discourse/docker-compose.yml up

mediawiki:
	docker-compose -f demo/mediawiki/docker-compose.yml up
	
mediawiki-db:
	docker exec -it mariadb-server /bin/bash -c "mysql --user=root --password=testpassword --database=testdb < /docker/tables.sql"
	# docker exec -it mediawiki /bin/bash -c "php /var/www/html/maintenance/importDump.php data.xml"

