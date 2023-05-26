-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.
delete from Reservations
where ReservationID = 2000;
select * from Reservations where customerid = 64;