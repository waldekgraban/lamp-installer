#!/bin/bash

clear

aptUpdate(){
	sudo apt update
}

aptInstallApache(){
	sudo apt install apache2
}

aptInstallMySql(){
	sudo apt install mysql-server
}

aptInstallPHP(){
	sudo apt install php libapache2-mod-php php-mysql
}

restartApache(){
	sudo systemctl restart apache2
}

lampInstall(){
	aptUpdate
	aptInstallApache
	aptInstallMySql
	aptInstallPHP
	restartApache
}

lampInstall
