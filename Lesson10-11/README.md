# Bash

## Задание: "Пишем скрипт"

### Цель: "Написать скрипт на языке Bash"

Сделать файл исполняемым ```chmod +x ./log_report```

Запустить ```./log_report```

Скрипт не содаёт файлов вне текущей рабочей директории

Для того чтобы скрип не включался пока работает другой скрипт, используется lock файл

Скрипт запускается, смотри временную метку последнег лога который он обрабатывал. Если временной метки нет, то скрипт с конца файла обрабатывает все логи на час раньше последнего лога, если временная метка есть (тоесть скрипт уже запускался), то он обрабатывает все логи с конца файла и до временной метки. После завершения он сохраняет временную метку последнего обработанного лога
