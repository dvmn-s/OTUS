# Выполнение ДЗ Selinux - когда все запрещено
## 1 часть
- Запуск машины **centos7_2004.01** vagrant up с ошибкой
```
 nginx.service - The nginx HTTP and reverse proxy server
   Loaded: loaded (/usr/lib/systemd/system/nginx.service; disabled; vendor preset: disabled)
   Active: failed (Result: exit-code) since Sun 2024-06-02 19:45:27 UTC; 4min 42s ago
  Process: 2998 ExecStartPre=/usr/sbin/nginx -t (code=exited, status=1/FAILURE)
  Process: 2997 ExecStartPre=/usr/bin/rm -f /run/nginx.pid (code=exited, status=0/SUCCESS)

```
- Установка policycoreutils-python
- Запуск nginx 3 способами
# 1. Переключатель setsebool
a. В audit.log находим ошибку
b. передаем в audit2allow
c. Меняем параметр nis_enabled on
# 2. Добавить разрешенный порт
а. semanage port -a -t http_port_t =p tcp 4881
# 3. Утилита audit2allow
a. Передаем в утилиту логи для формирования модуля
b. grep nginx /var/log/audit/audit.log | audit2allow -M nginx
c. semodule -i nginx.pp
## Выполнение второй части ДЗ

- ошибка обновления зоны происходит в связи с некорректным выставлением домена на файле
- применяется команда chcon для изменения контекста домена chcon -R -t named_zone_t /etc/named
- после смены домена, команда обновления зоны выполняется 

