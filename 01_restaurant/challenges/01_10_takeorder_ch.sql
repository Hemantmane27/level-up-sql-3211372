-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

select customerid from customers where firstname = 'Loretta' and lastname = 'Hundey' and address = '6939 Elka Place';
select * from orders where customerid in (select customerid from customers where firstname = 'Loretta' and lastname = 'Hundey' and address = '6939 Elka Place')
and OrderDate = '2022-09-20 14:00:00';

select * from OrdersDishes where orderid = 1001 order by 1 desc;
select DishID,name,price from dishes 
where name in ('House Salad','Mini Cheeseburgers','Tropical Blue Smoothie');

insert into orders (customerid,OrderDate) VALUES
(70, '2022-09-20 14:00:00');
insert into OrdersDishes (OrderID,DishID)
select 1001,DishID from dishes 
where name in ('Mini Cheeseburgers','Tropical Blue Smoothie','House Salad');
--delete from OrdersDishes where orderid = 1001;
select sum(Dishes.Price) from Dishes join OrdersDishes on Dishes.DishID = OrdersDishes.DishID
where OrdersDishes.OrderID = 1001;