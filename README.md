# R4C - Robots for consumers

### RUN
1. Clone project
```bash
$ git clone git@github.com:RBstyle/django_upload_files_app.git
$ cd django_upload_files_app
```
2. Install requirements
```bash
$ pip install -r requirements.txt
```
3. Import Dump SQL Data into SQLite Database
```bash
sqlite3 db.sqlite3 < data/db/dump.sql
```
4. Run project
```bash
$ python manage.py runserver
```

### Usage
## example 
1. Create Robot
```bash
$ curl -X POST -d '{"model":"R2","version":"D2","created":"2022-12-31 23:59:59"}' http://127.0.0.1:8000/robot/
{
    "id": 1,
    "serial": "R2-D2",
    "model": "R2", "version": "D2",
    "created": "2022-12-31T23:59:59"
    }
```

2. Get a list of robots in stock
```bash
$ curl http://127.0.0.1:8000/robot/
[
  {
    "model": "robots.robot",
    "pk": 1,
    "fields": {
      "serial": "R2-D2",
      "model": "R2",
      "version": "D2",
      "created": "2022-12-31T23:59:59Z"
    }
  },
  {
    "model": "robots.robot",
    "pk": 2,
    "fields": {
      "serial": "13-XS",
      "model": "13",
      "version": "XS",
      "created": "2023-01-01T00:00:00Z"
    }
  },
  {
    "model": "robots.robot",
    "pk": 3,
    "fields": {
      "serial": "X5-LT",
      "model": "X5",
      "version": "LT",
      "created": "2023-01-01T00:00:01Z"
    }
  },
  {
    "model": "robots.robot",
    "pk": 4,
    "fields": {
      "serial": "R2-D2",
      "model": "R2",
      "version": "D2",
      "created": "2023-10-01T23:59:59Z"
    }
  },
  {
    "model": "robots.robot",
    "pk": 5,
    "fields": {
      "serial": "R2-D2",
      "model": "R2",
      "version": "D2",
      "created": "2023-10-02T23:59:59Z"
    }
  },
  {
    "model": "robots.robot",
    "pk": 6,
    "fields": {
      "serial": "X5-LT",
      "model": "X5",
      "version": "LT",
      "created": "2023-10-04T00:00:01Z"
    }
  }
]
```

3. Get a report on the robots created during the week (you must be a log in as “director”).
  * username: director
  * password: PBGZRD_3bMfU$-x

You can follow the link `http://127.0.0.1:8000/report/` in the browser or make a CURL request in the terminal (the report will be saved in the current folder as "test.xlsx")
```bash

$ curl 'http://127.0.0.1:8000/report/' -H 'Cookie: sessionid=bixkkkczr0dwzzuk4h4ay259p32g9t94' -o test.xlsx

  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   804  100   804    0     0  70218      0 --:--:-- --:--:-- --:--:-- 73090
```

1. There are 2 orders: for Robot R3-D3 from client1 and for Robot R3-D2 from client2. If it is not in stock and we create it, the customer will receive an email.
```bash

$ curl -X POST -d '{"model":"R3","version":"D3","created":"2023-10-2 23:59:59"}' http://127.0.0.1:8000/robot/
_________________
django console: 
_________________

Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: R4C - Robots for consumerss
From: r4c@support.ru
To: customer1@mail.ru
Date: Wed, 04 Oct 2023 09:32:50 -0000
Message-ID: 
 <message_id>

Добрый день!
Недавно вы интересовались нашим роботом модели R3, версии D3. 
Этот робот теперь в наличии. Если вам подходит этот вариант - пожалуйста, свяжитесь с нами

-------------------------------------------------------------------------------
[04/Oct/2023 09:32:50] "POST /robot/ HTTP/1.1" 201 95
```
## Небольшая предыстория.
Давным-давно, в далёкой-далёкой галактике, была компания производящая различных 
роботов. 

Каждый робот(**Robot**) имел определенную модель выраженную двух-символьной 
последовательностью(например R2). Одновременно с этим, модель имела различные 
версии(например D2). Напоминает популярный телефон различных моделей(11,12,13...) и его версии
(X,XS,Pro...). Вне компании роботов чаще всего называли по серийному номеру, объединяя модель и версию(например R2-D2).

Также у компании были покупатели(**Customer**) которые периодически заказывали того или иного робота. 

Когда роботов не было в наличии - заказы покупателей(**Order**) попадали в список ожидания.

---
## Что делает данный код?
Сервис нацелен на удовлетворение потребностей трёх категорий пользователей:
- Технические специалисты компании. Они будут присылать информацию
- Менеджмент компании. Они будут запрашивать информацию
- Клиенты. Им будут отправляться информация
___