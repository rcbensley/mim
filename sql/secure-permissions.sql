DROP DATABASE IF EXISTS test;
DELETE FROM mysql.db WHERE Db='test' OR Db='test\\_%';
DELETE FROM mysql.user WHERE user = '';
DELETE FROM mysql.user WHERE password = '';
DELETE FROM mysql.user WHERE user = 'root' AND host NOT IN  ('localhost','127.0.0.1','::1');
FLUSH PRIVILEGES;