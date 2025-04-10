# Тестовое задание
1.  Написать Bash-скрипт, который выполняет следующие действия:
-  Раз в минуту записывает текущее время и свободное место на диске в указанный файл
-  Имя файла передаётся в качестве аргумента при запуске
- Скрипт должен работать непрерывно, пока не будет остановлен
-  Не использовать cron
2.  Написать Ansible Playbook, который автоматизирует развертывание этого скрипта:
-  Создаёт systemd-сервис, который:
-  Запускает Bash-скрипт из пункта 1.
-  Обеспечивает его автоматический старт при загрузке системы.
-  Гарантирует, что сервис остаётся активным и перезапускается в случае сбоя.
-  Опционально (по тегу) копирует с сервера файл (в который пишет скрипт) на локальную машину.

# Запуск и проверка работы:
1. Соединяем мастер и слейв через ssh, затем на мастер ноде клонируем репозиторий,
   устанавливаем ansible, на слейве устанавливаем python
2. На мастере после установки ansible редачим файлик /etc/ansible/hosts
   добавляя туда наш слейв на котором должен выполняться скрипт
3. Проверяем что соединение установлено ansible all -m ping
4. Запускаем плейбук ansible-playbook deploy_logger.yml
5. Подтягиваем логи со слейва на мастер командой ansible-playbook deploy_logger.yml --tags fetch_logs
   они упадут в дирректорию /logs которая сама создастся
6. Можем так же проверить что служба на слейве работает по команде systemctl status logger.service
