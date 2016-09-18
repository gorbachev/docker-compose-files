CREATE USER 'replication_user' IDENTIFIED BY 'changeme';
GRANT REPLICATION SLAVE ON *.* TO 'replication_user';
