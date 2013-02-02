What is this?
It's a bunch of directories and bash script so far with some mysql configs.

Why?
This small setup allows me to quickly deploy MySQL/MariaDB servers for testing.
I use it for Database design and development and general testing of MySQL/MariaDB
database servers.

What should I do?
Take a look at 'profile', I source this from my .bashrc file,
I also rsync a copy of this source to ~/db/
Put tar.gz files of MySQL or MariaDB in the versions directory and run the 'my'
bash script.
