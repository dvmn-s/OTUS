# Выполнение ДЗ Selinux - когда все запрещено\
- Запуск машины **centos7_2004.01** vagrant up с ошибкой\ 
``` nginx.service - The nginx HTTP and reverse proxy server\
   Loaded: loaded (/usr/lib/systemd/system/nginx.service; disabled; vendor preset: disabled)\
   Active: failed (Result: exit-code) since Sun 2024-06-02 19:45:27 UTC; 4min 42s ago\
  Process: 2998 ExecStartPre=/usr/sbin/nginx -t (code=exited, status=1/FAILURE)\
  Process: 2997 ExecStartPre=/usr/bin/rm -f /run/nginx.pid (code=exited, status=0/SUCCESS)```\
-
