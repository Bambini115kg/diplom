Добрый день!
За основу диплома был взят проект Олега Богатчука по docker swarm. Просили длинно не писать, поэтому очень кратко.

### 1.	Регистрация доменного имени.
-	Зарегистрировал на reg.ru  – **netollogy.space**
-	Прописал все А-записи

![Image alt](https://github.com/Bambini115kg/diplom/raw/main/images/regru.png)

### 2.	Создание инфраструктуры

-	Создал папку в облаке - **netology-space**
-	Зарегистрировал сервисный аккаунт - **netology-space-service**
-	Сгенерировал нужные ключи (доступа и секрет)
-	Бакет автоматом создан terraform -  **terraform-state-diplom**
-	Инициализировал backend  - **terraform init -backend-config="access_key=<your access key>" -backend-config="secret_key=<your secret key>"**

![Image alt](https://github.com/Bambini115kg/diplom/raw/main/images/YC.png)

### 3.	Установка Nginx и LetsEncrypt
	Разработаны роли **nginx** и **nginx_let**. Использовал тестовый сертификат (--test-cert)

![Image alt](https://github.com/Bambini115kg/diplom/raw/main/images/sert.png)


### 4.	Установка кластера MySQL
Настроил репликацию, запустил, потестировал. Вроде всё работает нормально))

![Image alt](https://github.com/Bambini115kg/diplom/raw/main/images/mysql.PNG)

### 5.	Установка Wordpress
-	Установил и сделал первую настройку (пароли. Почта)

![Image alt](https://github.com/Bambini115kg/diplom/raw/main/images/wordpress.png)
![Image alt](https://github.com/Bambini115kg/diplom/raw/main/images/wordpress_work.png)

### 6.	Установка Gitlab CE и Gitlab Runner
-	Установил **Gitlab** и **shared runner**
-	Создал тестовый репозиторий **“wordpress”**
-	Создал тестовый файл для деплоя **“index.html”**
-	Написал pipline для деплоя по тэгу 

![Image alt](https://github.com/Bambini115kg/diplom/raw/main/images/gitlab.png)
![Image alt](https://github.com/Bambini115kg/diplom/raw/main/images/gitlab_pipeline.png)


### 7.	Установка Prometheus, Alertmanager, Node_exporter, Grafana

-	Сделаны роли для **node_exporter** и **mysql_exporter**.
-	Сделана роль для **Prometheus**. Устанавливает правила для alertmanager и принимает метрики с экспортеров.
-	Сделана роль для **Grafana** с дашбордами
-	Сделана роль для **Alertmanager**  с настройками для отправки алертов на почту 

![Image alt](https://github.com/Bambini115kg/diplom/raw/main/images/prometheus.png)
![Image alt](https://github.com/Bambini115kg/diplom/raw/main/images/prometheus%20target.png)
![Image alt](https://github.com/Bambini115kg/diplom/raw/main/images/alertmanager.png)
![Image alt](https://github.com/Bambini115kg/diplom/raw/main/images/grafana.png)


