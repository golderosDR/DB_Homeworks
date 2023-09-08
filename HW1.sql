1.  Авторизация пользователя - read
    Регистрация пользователя - create
    Редактирование личных данных  - update
    Добавление нового видео - create
    Создание плейлиста - create
    Добавление видео в плейлист - create
    Изменение описания видео  - update
    Удаление видео - delete
    Удаление плейлиста - delete
    Добавление нового комментария - create


2.Вывести название и стоимость товаров от 20 EUR.
SELECT ProductName, Price FROM [Products]
where price>=20

3. Вывести страны поставщиков
SELECT DISTINCT Country FROM Customers

4. В упорядоченном по стоимости виде вывести название и стоимость товаров от всех поставщиков, кроме поставщика 1.
SELECT ProductName, Price FROM [Products]
where SupplierID!=1
order by Price ASC

5.Вывести контактные имена клиентов, кроме тех, что из France и USA.
SELECT ContactName FROM [Customers]
where not Country in ('USA', 'France')
