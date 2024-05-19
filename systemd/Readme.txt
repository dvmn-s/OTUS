1. Создание машины centos8
2. [root@centos8 ~]# tail -f /var/log/messages
May 19 15:44:49 centos8 systemd[1]: whatchtime.service: Service lacks both ExecStart= and ExecStop= setting. Refusing.
May 19 15:44:49 centos8 systemd[1]: Starting My watchlog service...
May 19 15:44:49 centos8 root[25886]: Sun May 19 15:44:49 UTC 2024: I found word, Master!
May 19 15:44:49 centos8 systemd[1]: watchlog.service: Succeeded.
May 19 15:44:49 centos8 systemd[1]: Started My watchlog service.
May 19 15:45:11 centos8 systemd[1]: Reloading.
May 19 15:45:11 centos8 systemd[1]: Starting My watchlog service...
May 19 15:45:11 centos8 root[25913]: Sun May 19 15:45:11 UTC 2024: I found word, Master!
May 19 15:45:11 centos8 systemd[1]: watchlog.service: Succeeded.
May 19 15:45:11 centos8 systemd[1]: Started My watchlog service.


3 Вывод по последнему пункту ДЗ

.[root@centos8 ~]# ss -tnulp | grep httpd
tcp   LISTEN 0      128          0.0.0.0:80        0.0.0.0:*    users:(("httpd",pid=2007,fd=3),("httpd",pid=2006,fd=3),("httpd",pid=2005,fd=3),("httpd",pid=2004,fd=3),("httpd",pid=2002,fd=3))
tcp   LISTEN 0      128          0.0.0.0:8080      0.0.0.0:*    users:(("httpd",pid=1772,fd=3),("httpd",pid=1771,fd=3),("httpd",pid=1770,fd=3),("httpd",pid=1769,fd=3),("httpd",pid=1766,fd=3))
