-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

select Customers.FirstName,Customers.LastName,Customers.Email,count(Orders.OrderID) from customers join
 Orders on Customers.CustomerID = Orders.OrderID
 group by Orders.CustomerID
 order by Count(Orders.OrderID) desc
 limit 15;
