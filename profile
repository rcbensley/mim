export DBDIR=$HOME/db
export PATH=$DBDIR/versions/mysql/bin:$DBDIR/bin:$PATH
export LD_LIBRARY_PATH=$DBDIR/versions/mysql/lib
alias mysql='mysql --prompt="mysql \R:\m:\s (\U) [\d] > "'
