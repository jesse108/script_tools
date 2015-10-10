#!/bin/bash
# Mysql DB backup
# jesse_108@163.com

dateStr=`date "+%Y-%m-%d"`
year=`date "+%Y"`
month=`date "+%m"`
host="onlinein02.mysql.rds.aliyuncs.com"
db="db_name"
passwd="pwd"
username="username"


folder="/alidata/backup/backup/${year}/${month}"

mkdir -p $folder

fileName="${folder}/backup_${dateStr}.sql"


mysqldump -h${host} -u${username} -p${passwd} ${db} > $fileName
