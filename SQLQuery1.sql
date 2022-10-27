--create coustomers
create table customers(customerID int primary key,city varchar(40),country varchar(40),postalcode int)

--insert values in table
insert into customers values(21,'London','England',121145)
insert into customers values(23,'Berlin','Germany',121139)
insert into customers values(28,'London','England',121145)
insert into customers values(29,'Tokyo','Japan',121138)
insert into customers values(30,'Osla','Norway',121132)
insert into customers values(31,'Delhi','India',121171)
insert into customers values(32,'Parise','France',121155)
insert into customers values(33,'Canberra','Australia',121165)
insert into customers values(34,'Berlin','Germany',121139)



select * from customers

--create products table
create table Products(productId int primary key,productname varchar(40),price int)

--insert records in Products table
insert into Products values(101,'hp Laptop',55000)
insert into Products values(102,'Dell Laptop',55000)
insert into Products values(103,'acer Laptop',71000)
insert into Products values(104,'asus Laptop',35000)
insert into Products values(105,'Lenovo Laptop',40000)

select * from Products 

--add column in customers table
alter table customers add productId int 

alter table customers add constraint productId foreign key(productId)references Products(productId)


select * from customers


alter table customers drop column productId

alter table customers add productId int 
alter table customers add constraint productId foreign key(productId)references Products(productId)

select * from customers

update customers set productId=103 where customerID=28

update customers set productId=105 where customerID=21

update customers set productId=101 where customerID=23

update customers set productId=102 where customerID=29

update customers set productId=104 where customerID=31

update customers set productId=103 where customerID=33

update customers set productId=101 where customerID=34

select * from customers

--1.Write a statement that will select the City column from the Customers table

select  city from customers

--2.Select all the different values from the Country column in the Customers table.

select  distinct(country)from customers 

--3.Select all records where the City column has the value "London

select * from customers where city='London'

--4.Use the NOT keyword to select all records where City is NOT "Berlin".

select * from customers where city <>'Berlin'

--5.Select all records where the CustomerID column has the value 23.

select* from customers where customerID=23

--6.Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 121110.

select * from customers where city='Berlin' and postalcode=121110

--7.Select all records where the City column has the value 'Berlin' or 'London'.

select * from customers where city= 'Berlin' or city='London'

--8.Select all records from the Customers table, sort the result alphabetically by the column City.

select * from customers order by city ASC

--9.Select all records from the Customers table, sort the result reversed alphabetically by the column City.

select *from customers order by city DESC

--10.Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City

select * from customers order by country, city ASC 

--11.Select all records from the Customers where the PostalCode column is empty.

select * from customers where postalcode=0


--12.Select all records from the Customers where the PostalCode column is NOT empty.

select * from customers where postalcode != 0

--13.Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway".


--14.Delete all the records from the Customers table where the Country value is 'Norway'.

delete  From customers where country='Norway'

select * from customers

--15.Use the MIN function to select the record with the smallest value of the Price column.

select min(price) as minprice from Products

--16.Use an SQL function to select the record with the highest value of the Price column.

select Max(price) as Maxprice from Products

--17.Use the correct function to return the number of records that have the Price value set to 20

select *from products where price=20

--18.Use an SQL function to calculate the average price of all products.

select avg(price) as averageprice from Products

--19.Use an SQL function to calculate the sum of all the Price column values in the Products table

select sum(price) as sumprice from Products

--20.Select all records where the value of the City column starts with the letter "a".

select * from customers where city like 'a__'

--21.Select all records where the value of the City column ends with the letter "a".

select * from customers where city like '__a'

--22.Select all records where the value of the City column contains the letter "a".

select *  from customers where city like '%a%'

--23.Select all records where the value of the City column starts with letter "a" and ends with the letter "b".

select * from customers where city like '[%a-b%]'

--24.Select all records where the value of the City column does NOT start with the letter "a".

select * from customers where city not like 'a__'

--25.Select all records where the second letter of the City is an "a".
select * from customers where city like '_a_'

--26.Select all records where the first letter of the City is an "a" or a "c" or an "s".

select * from customers where city like '[acs]'

--27.Select all records where the first letter of the City starts with anything from an "a" to an "f".

select * from customers where city like '[%a-f%]'

--28.Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".

select * from customers where city not like '[acf]'

--29.Use the IN operator to select all the records where the Country is either "Norway" or "France".

select * from customers where country in ('Norway','France');

--30.Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France".

select * from customers where country not in ('Norway','France')

--31.Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20

select * from Products where price between 10 and 20

--32.Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.

select * from Products where price not between 10 and 20

--33.Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically between 'Geitost' and 'Pavlova'.

select * from Products where  productname between 'Geitost' and 'Pavlova'

--34.When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead.

select postalcode AS Pno from customers

--35.When displaying the Customers table, refer to the table as Consumers instead of Customers.

select * from customers As Consumers;

--36.List the number of customers in each country.

select count(customerID),country from customers group by country order by count(customerID)DESC

--37.List the number of customers in each country, ordered by the country with the most customers first.

SELECT COUNT(CustomerID),Country FROM Customers GROUP BY Country ORDER BY COUNT(CustomerID) DESC

--38.Write the correct SQL statement to create a new database called testDB.


--40.Add a column of type DATE called Birthday in Persons table
--41.Delete the column Birthday from the Persons table
create table Persons(Birthday date)

alter table Persons drop column Birthday