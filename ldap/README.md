LDAP

## Задание
1) Установить FreeIPA
2) Написать Ansible-playbook для конфигурации клиента
## Практическая часть
1. vagrant up ipa.otus.lan

```bash
vagrant ssh ipa.otus.lan
sudo -i
```
ipa.otus.client: ipa user-add otus-user --first=Otus --last=User --password

vagrant up

Пароль администратора устанавливается в файле ansible, в ключе -w, модуль add host to ipa server

```bash
vagrant up
```

Согласно методичке Добавляем хосты

```bash
vagrant ssh client1.otus.lan
sudo -i
kinit otus-user
...
```
