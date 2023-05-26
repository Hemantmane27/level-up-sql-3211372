-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.
select * from customers where firstname = 'Cleo';
select * from CustomersDishes where customerid = 42;
select * from Dishes where name = 'Quinoa Salmon Salad';
update Customers set FavoriteDish = 9 where customerid = 42;