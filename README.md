# MIM, MariaDB Instance Manager
## Create and Manage mulitple MariaDB servers running on a single environment.
==

## Up and running
Put mim in your PATH, or run ```make install```.

Create a home for MIM, somewhere to keep data and binaries for our MariaDB installations.
```bash
mkdir -p ${HOME}/mim/base ${HOME}/mim/data ${HOME}mim/data/configs
export MIMHOME=${HOME}/mim
```
The configs directory can contain extra mysqld settings you wish to use when creating an instance.

Secure it! Just for your user.
```bash
chmod -R 700 ${MIMHOME}
```

Download a MariaDB Tarball to mim/base:
```bash
DOWNLOAD_URL="https://downloads.mariadb.org/interstitial/mariadb-10.2.14/bintar-linux-x86_64/mariadb-10.2.14-linux-x86_64.tar.gz"
cd $MIMHOME/base && curl -L -O ${DOWNLOAD_URL}
```

Create a basic config for custom options
```
 echo -e "[mysqld]\nsql_mode = TRADITIONAL\nsync_binlog = 1" > ${MIMHOME}/configs/simple.cnf
 ```

We are now ready to create an instance, or two, or twelve!

Build and install the instance.
```mim build master1 3000```
```mim install master1```

Building creates a config and directories in ```${MIMHOME}/data/master1```.
The install command has extracted the Tarball in ```${MIMHOME}/base```, and used the config and directories created by the build command to run mysql_install_db in ```${MIMHOME}/data/master1```.

Start the database server.
```mim start master1```

Is it running?
```mim status master1```

Login!
```mim go master1```


## Extras
Secure the instance, similar to mysql_secure_installation:
```mim secure master1```

Add timezones from your system:
```mim tz master1```

Generate aliases for your shell:
```mim alias master1```

## FAQ
* What does Mim do again?
Configure, start, and stop multiple MariaDB databases on a single server.

* Why not mysqlsandbox?
Mim focuses only on MariaDB, and abuses a few MariaDB features like 'SHUTDOWN' and socket authentication.

* Why not mysqlmanager?
It's dead Jim.

* Why not docker, kubernetes, etc.
Not all of us are using Linux.
Not all of us are floating in the clouds.
Some of us are using jails, cgroups, zones, and even PowerVM.

* Can I use this in production?
Sure. Like any production database, you will still need monitoring and alerting, not provided by mim.
Mim has it's own log (```${MIMHOME}/log```), and of course each database instance has it's own mysqld error log file, e.g. ```${MIMHOME}/data/${INSTANCE_NAME}/error.log```.

* So Why Mim?
The main advantage of Mim, is to not introduce anything too crazy or different to any environment.
Mim is a single binary.
In some restricted production environments this is very useful.

* What did you use to write and compile mim?
Vim with lisp mode (```set lisp```), and sbcl.

* What about replication tooling?
Look else where traveller. I will be taking a look at this in the future.

# ToDo
* Replication management and monitoring interface?
	* Multi-source replication.
	* Galera?
* MariaDB ColumnStore management.

