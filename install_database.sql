-- mysql -u root -v < install_database.sql

DROP DATABASE IF EXISTS `santixmvp_development`;
CREATE DATABASE santixmvp_development CHARACTER SET utf8 COLLATE utf8_general_ci;

DROP DATABASE IF EXISTS `santixmvp_test`;
CREATE DATABASE santixmvp_test CHARACTER SET utf8 COLLATE utf8_general_ci;

DROP DATABASE IF EXISTS `santixmvp_production`;
CREATE DATABASE santixmvp_production CHARACTER SET utf8 COLLATE utf8_general_ci;

-- DROP USER 'santixmvp'@'localhost';
-- GRANT ALL PRIVILEGES ON *.* to santixmvp@localhost identified by 'asdfasdf' WITH GRANT option;
