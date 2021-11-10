#!/bin/bash
for HOST in $(cat servers.txt )
do
ssh $HOST " hostname && echo '------------------------------------' && rpm -qa | egrep 'HEB_Tomcat9|HEB_tomcat-' |  cut -c 1-18 && rpm -qa | grep -i httpd | awk '/httpd-2./' && ps -C httpd >/dev/null && echo "Httpd is Running" || echo "Httpd is Not running" && echo -e '\n------------------------------------' " >> q1.txt
done
