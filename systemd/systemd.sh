#!/bin/bash

#yum upgrade -y
#yum update -y
setenforce 0
yum install epel-release -y
yum install nano spawn-fcgi php php-cli mod_fcgid httpd -y
sudo systemctl disable firewalld
echo -e "WORD='ALERT'\nLOG=/var/log/watchlog.log" >> /etc/sysconfig/watchlog
echo "ALERT" > /var/log/watchlog.log
echo -e '#!/bin/bash\nWORD=$1\nLOG=$2\nDATE=`date`\n\nif grep $WORD $LOG &>/dev/null\nthen\nlogger "$DATE: i found,Otus!"\nelse\nexit 0\nfi' >> /opt/watchlog.sh
chmod +x /opt/watchlog.sh
echo -e "[Unit]\nDescription=My watchlog service\n[Service]\nType=oneshot\nEnvironmentFile=/etc/sysconfig/watchlog\nExecStart=/opt/watchlog.sh \$WORD \$LOG" >> /lib/systemd/system/watchlog.service
echo -e "[Unit]\nDescription=Run watchlog script every 30 second\n[Timer]\nOnUnitActiveSec=30\nUnit=watchlog.service\n[Install]\nWantedBy=multi-user.target" >> /lib/systemd/system/watchlog.timer
systemctl enable watchlog.timer --now
systemctl start watchlog
cp /etc/httpd/conf/httpd.conf /etc/httpd/conf/first.conf
cp /etc/httpd/conf/httpd.conf /etc/httpd/conf/second.conf
echo -e 'PidFile /var/run/httpd-first.pid' >> /etc/httpd/conf/first.conf
echo -e 'PidFile /var/run/httpd-second.pid' >> /etc/httpd/conf/second.conf
sed -i 's/Listen 80/Listen 8080/' /etc/httpd/conf/second.conf
systemctl start httpd@first
systemctl start httpd@second
