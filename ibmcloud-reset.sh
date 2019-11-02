#!/bin/sh

LogFile_path="日志文件路径，比如 ./ibmcloud.log"
account="IBMCloud账号"
passwd="密码"

echo "===============================" >> $LogFile_path
echo `date +%y-%m-%d--%H-%M-%S` >>  $LogFile_path

/usr/local/bin/ibmcloud login -u $account -p $passwd -r 'us-south'  >>  $LogFile_path 2>&1 
/usr/local/bin/ibmcloud target --cf-api 'https://api.ng.bluemix.net' -o $account -s 'dev'  >>  $LogFile_path   2>&1
/usr/local/bin/ibmcloud cf restart fodi >>  $LogFile_path  2>&1

