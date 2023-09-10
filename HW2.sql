1. Вывести название и стоимость в USD одного самого дорогого проданного товара
SELECT ProductName,
        Price * 1.07 as PriceUSD
FROM OrderDetails
Join Products on Products.ProductID = OrderDetails.ProductID
order by Price DESC
Limit 1

2. Вывести два самых дорогих товара из категории Beverages из USA
SELECT * FROM Products
Join Suppliers on Suppliers.SupplierID = Products.SupplierID
Join Categories on Categories.CategoryID = Products.CategoryID
where Country = 'USA' and CategoryName = 'Beverages'
order by Price DESC
Limit 2

3. Удалить товары с ценой менее 5 EUR
Delete from Products
where Price <=5

4. Вывести список стран, которые поставляют морепродукты
SELECT Distinct Country FROM Products
Join Suppliers on Suppliers.SupplierID = Products.SupplierID
Join Categories on Categories.CategoryID = Products.CategoryID
where CategoryName = 'Seafood'

5. Очистить поле ContactName у всех клиентов не из China
Update Customers
Set
ContactName = ''
where Country !='China'

