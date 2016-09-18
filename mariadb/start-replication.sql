CHANGE MASTER TO
ASTER_HOST='mariadb-master',
MASTER_USER='replication_user',
MASTER_PASSWORD='changeme',
MASTER_PORT=3306,
MASTER_CONNECT_RETRY=10,
MASTER_USE_GTID=current_pos;

start slave;
