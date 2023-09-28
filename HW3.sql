1. Вывести ко-во поставщиков не из UK и не из China
SELECT count(*) FROM Suppliers
where not country in ('UK','China')

2. Вывести среднюю/MAX/MIN стоимости и ко-во товаров из категорий 3 и 5
SELECT avg(Price) as AVGPrice_Category_3_and_5,
max(Price) as maxPrice_Category_3_and_5,
min(Price) as minPrice_Category_3_and_5
FROM Products
where categoryId in (3,5)

3. Вывести общую сумму(??общее количество или общая стоимость) проданных товаров

Общее количество
SELECT sum(Quantity) as TotalQuantity
FROM OrderDetails

Общая стоимость проданных товаров
SELECT sum(OrderDetails.Quantity*Products.Price) as TotalSoldPrice
FROM OrderDetails
join Products on Products.ProductID=OrderDetails.ProductID

4. Вывести ко-во стран, которые поставляют напитки
SELECT count(distinct Suppliers.country) as TotalCountryCount_Beverages 
FROM Products
join Suppliers on Suppliers.SupplierID=Products.SupplierID
join Categories on Categories.CategoryID=Products.CategoryID
where Categories.CategoryName='Beverages'

5. Вывести сумму, на которую было отправлено товаров клиентам в Germany
SELECT sum(OrderDetails.Quantity*Products.Price) as TotalPriceSum_to_Germany 
FROM OrderDetails
join Orders on Orders.OrderID=OrderDetails.OrderID
join Products on Products.ProductID=OrderDetails.ProductID
join Customers on Customers.CustomerID=Orders.CustomerID
where Customers.Country='Germany'
