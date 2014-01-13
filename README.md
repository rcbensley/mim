## MIM - Mini MySQL/MariaDB Instance Manager
==

mim is a single bash script ('my') to build and manage local installations of MySQL or MariaDB for development and testing.

### Install

*  Put the 'my' bash script into a directory in your path, I tend to use ~/bin
*  Create a directory to contain the binary tar.gz files for you platform. I.e. ~/mim-binaries
*  Create a directory to contain the database installations. I.e. ~/mim-databases
*  Export these directories as a the relevant variable in your bash profile:
	export MIMBINARIES=~/mim-binaries
	export MIMHOME=~/mim-databases


### First run / Setup
*  Once the above is done, run 'my setup', this will create the required directories where $MIMHOME has been defined.
* Copy the configs from example_configs to $MIMHOME/configs, add your own configs as necessary.
* Download and copy binary tarballs of MySQL/MariaDB to $MIMBINARIES/ i.e. mariadb-10.0.7-linux-x86_64.tar.gz
* You can can now run 'my' to quickly build, install, and start an instance (in that order).


### Future features
 * MySQL 5.6+ and MariaDB 10+ GTID management for testing failover.
 * Client path switching
 * Library path switching for building C/C++ projects like ODBC connectors.
 * ... better documentation.


_R.I.P mysqlmanager_
