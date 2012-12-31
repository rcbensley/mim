export DBDIR=$HOME/db
export PATH=$DBDIR/versions/mysql/bin:$DBDIR/bin:$PATH
export LD_LIBRARY_PATH=$HOME/db/versions/mysql/lib
export DYLD_LIBRARY_PATH=$HOME/db/versions/mysql/lib
alias mysql='mysql --prompt="mysql \R:\m:\s (\U) [\d] > "'

alias updatedb='rsync -vur --delete --exclude=*.git* --exclude=data/* --exclude=conf/*.cnf ~/src/mydba/ ~/db/'
