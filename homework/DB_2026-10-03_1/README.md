# Практика. Кластерные и некластерные индексы в MS SQL Server

## Создание БД IndexDemo + таблица Customers + 50 000 строк

![Скриншот](screenshots/01.png)

## Замер до индексов (Table Scan)

![Скриншот](screenshots/02.png)

**Сообщение:**

![Скриншот](screenshots/03.png)

## Кластерный индекс на CustomerID

![Скриншот](screenshots/04.png)

## Некластерный индекс на Email (без INCLUDE)

![Скриншот](screenshots/05.png)

**Сообщение:**

![Скриншот](screenshots/06.png)

**План выполнения:**

![Скриншот](screenshots/07.png)

## Некластерный индекс с INCLUDE (покрывающий)

![Скриншот](screenshots/08.png)

**План выполнения:**

![Скриншот](screenshots/09.png)

