MyDBA - simple BASH MySQL/MariaDB instance manager
==

## What is this?
A simple mysql instance manager. Mostly for testing features and running multiple instances of MySQL/MariaDB, even multiple versions.
Comes in handy when you need to test replication features for example.


## How do I use it?
Define the following variables:
 * export DBHOME=/path/do/dir, an empty directory to be used for configs, templates, datadir by the 'my' script.
 * export DBINSTDIR=/path/do/dir, a directory where you are keeping tar.gz files of Mysql or MariaDB
 * Finally put the 'my' script somewhere that is in your $PATH variable. I normally used ~/bin
 * running: my tutorial, has more insights!


## Future features
 * MySQL 5.6+ and MariaDB 10+ GTID management for testing failover.
 * Client path switching
 * LD_LIBRARY_path switching
 * ... better documentation.




R.I.P mysqlmanager
