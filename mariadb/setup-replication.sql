CREATE USER 'replication_user'@'localhost' IDENTIFIED BY 'changeme';
GRANT REPLICATION SLAVE ON *.* TO replication_user;
