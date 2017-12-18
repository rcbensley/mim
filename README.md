## MIM - Mini MySQL/MariaDB Instance Manager

mim is a single bash script ('my') to build and manage local installations of MySQL or MariaDB for development and testing.

### Install

*  Put the 'my' bash script into a directory in your path, I tend to use ~/bin
*  Create a directory to contain the binary tar.gz files for you platform. I.e. ~/mim-binaries
*  Create a directory to contain the database installations. I.e. ~/mim-databases
*  Export these directories as a the relevant variable in your bash profile:
```bash
export MIMBINARIES=~/mim-binaries
export MIMHOME=~/mim-databases
```

* With 'my' now in your path, run 'my setup', this will create directories in $MIMHOME
* Copy the configs from example_configs to $MIMHOME/templates




### Create your first instance
* Put a binary package of MySQL or MariaDB in $MIMBINARIES:
```bash
$ cp ~/Downloads/mariadb-5.5.35-linux-x86_64.tar.gz $MIMBINARIES/
$ cp ~/Downloads/mysql-5.5.35-linux-x86_64.tar.gz $MIMBINARIES/
```

* Create a config, we will call it master1 to run on port 3000, select options such as config and version as appropiate:
```bash
$ my build master1 3000
```
* If the above went smoothly, then you have installed MIM correctly, now install the instance:
```bash
$ my install master1
```
* Start the instance:
```bash
$ my start master1
```
* Print aliases for your configured instances, to easily access them:
```bash
$ my aliases
```
* Generate a PATH and LD_LIBRARY_PATH variables for the desired instance:
```bash
$ my client master1
```

### TODO
 * Nothing! You should probably have switched to some kind of container format by now.

_R.I.P mysqlmanager_
