config_Mysql(){
    sed -i 's/# pid-file/pid-file/' /etc/mysql/mysql.conf.d/mysqld.cnf
    sed -i 's/# socket/socket/' /etc/mysql/mysql.conf.d/mysqld.cnf
    sed -i 's/# port/port/' /etc/mysql/mysql.conf.d/mysqld.cnf
    sed -i 's/# datadir/datadir/' /etc/mysql/mysql.conf.d/mysqld.cnf
    sed -i 's/= 127.0.0.1/= 0.0.0.0/' /etc/mysql/mysql.conf.d/mysqld.cnf

    mkdir /var/run/mysql
    chown -R mysql:mysql /var/run/mysql

    /etc/init.d/mysql start

}

main (){
	config_Mysql
}

main
