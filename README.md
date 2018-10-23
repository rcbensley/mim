# MIM - MariaDB Instance Manager
--------------------------------

## What?

mim is a single bash script ('my') to create, start, and stop multiple instances of your installed version of MariaDB 10.x.


## Why?

Not everyone has access to or wants to manage hypervisors or containers.

## How?

MariaDB offers enough default management features to make this easier, the 'SHUTDOWN' command, and auth_socket plugin, to name a few.

### Install

* Put the 'my' bash script into a directory in your path, I tend to use ~/bin
* Make it executable, e.g. ```chmod +x ~/bin/my```
* Run ```my setup```


### Create your first instance
* Install a version of MariaDB to your system using yum, rpm, apt, brew, ports, etc.

* Create a config, we will call it master1 to run on port 3000, select options such as config and version as appropiate:
```bash
$ my create master1 3000
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

--
_R.I.P mysqlmanager_
