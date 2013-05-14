## What is this?
A mini-mysql instance manager. I use this for running multiple instances of MySQL or MariaDB. Mostly to test replication.

## What can it do?
Currently it allows you to switch between a version of MySQL or MariaDB, create configs from templates, and use those configs to create a valid datadir to run a server. See 'mydba/templates/template.cnf' to see what is needed differentiate multiple instances.

## Install
take a look at the 'profile' file. I do an rsync of the 'mydba' directory to ~/db, and add ~/db/bin to PATH to call the 'my' bash script.

## Future Features
* Link templates to versions in 'mydba/versions' shift 'CURRENT' dependancy, then able to run multiple versions of MySQL/MariaDB. i.e. 'mydba/templates/mariadb10' infers 'mydba/versions/mariadb10' symlink.
* Better output formatting.
* Allow safe (mysqld_safe) and unsafe (mysqld) daemon mode switching. Per Server? Per Cluster?
* Add LD_LIBRARY_PATH switching for your environment.
* Resist the OOP urge. But maybe use Python/Perl/Ruby to better parse configs to manage instances?
* Utilise mysqld_multi and create clustered configs per server version.
* ...postgresql?

R.I.P mysql_instane
