1. Найти мин/стоимость товаров для каждой категории
SELECT CategoryId, 
min(Price) as MinPrice,
max(Price) as MsxPrice
FROM Products
group by CategoryId

2. Вывести ТОП-3 стран по количеству доставленных заказов
SELECT Customers.Country,
count(*) as OrderCount
FROM Orders
join Customers on Customers.CustomerID=Orders.CustomerID
group by Customers.Country
order by OrderCount desc
limit 3

3. Вывести названия категорий, в которых более 10 товаров
SELECT CategoryName
FROM Products
join Categories on Categories.CategoryID=Products.CategoryID
group by CategoryName
having count(*)>=10
order by count(*) desc

4. Очистить тел/номер поставщикам из USA
update Suppliers
set Phone = ''
where Country='USA'

5.Вывести имена и фамилии (и ко-во заказов) менеджеров, у которых ко-во заказов менее 15
SELECT LastName, 
FirstName,
count(*) as OrderCount
FROM Orders
join Employees on Employees.EmployeeID=Orders.EmployeeID
group by Employees.EmployeeID
having OrderCount<=15
order by OrderCount

6. Вывести товар, который находится на втором месте по ко-ву заказов
SELECT ProductName
FROM OrderDetails
join Products on Products.ProductID=OrderDetails.ProductID
group by Products.ProductID
order by count(*) desc
limit 1 offset 1