# NFS, FUSE

## Задание: "Работа с NFS"

### Цель: Научиться самостоятельно разворачивать сервис NFS и подключать к нему клиентов

#### Настройка сервера NFS

- Установим сервер NFS
  ![](images/img1.png)
- Проверяем наличие слушающих портов
  ![](images/img2.png)
- Создаём и настраиваем директорию, которая будет экспортирована в будущем
  ![](images/img3.png)
- Cоздаём в файле /etc/exports структуру, которая позволит экспортировать ранее созданную директорию
  ![](images/img4.png)
- Экспортируем ранее созданную директорию
  ![](images/img5.png)
  
#### Настраиваем клиент NFS

- Установим пакет с NFS-клиентом
  ![](images/img6.png)
- Добавляем в /etc/fstab строку
  ![](images/img7.png)
- Перечитываем настройки и подключаем сетевые тома
  ![](images/img8.png)
- Проверяем успешность монтирования
  ![](images/img9.png)

#### Проверки

- Создаём файл на сервере
  ![](images/img10.png)
- Првоеряем что файл появился на клиенте
  ![](images/img11.png)
- Создаём тестовый файл на клиенте
  ![](images/img12.png)
- Проверяем, что тестовй файл появился на сервере
  ![](images/img13.png)

#### Финальные проверки

- Проверяем, что клиент после перезагрузки видит файлы на сервере
  ![](images/img14.png)
- Ребутим сервер, предварительно позаботясь о том, чтобы он получил тот же ip адресс, который был до этого
  ![](images/img15.png)
- Делаем проверки на сервере после ребута
  ![](images/img16.png)
- Заключительные проверки на клиенте
  ![](images/img17.png)
  ![](images/img18.png)

#### Делаем через скрипты

- Создаём скрип для сервера
  ![](images/img19.png)
- Создаём скрипт на сервере, он принимает адресс сервера
  ![](images/img20.png)
  ![](images/img21.png)
- Создам файл на сервере и прворяем что он появился на клиенте
  ![](images/img22.png)
  ![](images/img23.png)

Работает 🎉🎉🎉

Скрипты положил тут рядом с README.md
