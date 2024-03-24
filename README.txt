Установка centos8
$ curl -L -O

Добавление образа
$ vagrant box add --name "centos8" ./vagrant.box

Инициализация Vagrantfile
$ vagrant init centos8

Включение машины
$ vagrant up

Подключение
$ vagrant ssh



Подключение репозитория с актуальным ядром ML версии
$ rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
$ dnf --disablerepo="*" --enablerepo="elrepo-kernel" list available | grep kernel-ml
$ dnf install -y kernel-ml

