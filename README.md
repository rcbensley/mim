# MIM, MariaDB Instance Manager
## Create and Manage mulitple MariaDB servers running in a single environment.
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

## Using a custom config



## FAQ

* Why not mysqlsandbox	?
Mim focuses only on MariaDB. There are some handy features which make

* Why Scheme?
It's cool!

* What about replication tooling?
Look else where traveller.

* Can I use this in production?
Sure. Like any production database, you will still need monitoring and alerting, not provided by mim.
Mim's goal is to simply configure, start, stop multiple instances on a single server.
Unlike the default scripts used for init.d or systemd, there is no guessing or testing for empty/unset variables, Mim specifcally sets everything we need start a database server and it's relevant logging.


* Why not just use docker, kubernetes, etc.
Not all of us are using Linux (some of us are using jails and zones).
The main advantage of mim, is to not introduce anything too crazy or different to any environment.
Mim is a single file command line tool, which requires some directories with appropriate permissions.
Introducing new YUM or APT repositories into a managed environemnt can be a political and security minefield.

==
_R.I.P mysqlmanager_
