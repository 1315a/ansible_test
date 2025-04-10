# Тестовое задание
1.  Написать Bash-скрипт, который выполняет следующие действия:
o  Раз в минуту записывает текущее время и свободное место на диске в указанный файл
o  Имя файла передаётся в качестве аргумента при запуске
o  Скрипт должен работать непрерывно, пока не будет остановлен
o  Не использовать cron
2.  Написать Ansible Playbook, который автоматизирует развертывание этого скрипта:
o  Создаёт systemd-сервис, который:
  Запускает Bash-скрипт из пункта 1.
  Обеспечивает его автоматический старт при загрузке системы.
  Гарантирует, что сервис остаётся активным и перезапускается в случае сбоя.
o  Опционально (по тегу) копирует с сервера файл (в который пишет скрипт) на локальную машину.
