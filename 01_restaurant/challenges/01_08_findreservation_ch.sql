-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.
select customerid from Customers where LastName like 'St%';
select Customers.FirstName,Customers.LastName from reservations join Customers
 on customers.customerid = Reservations.CustomerID where 
PartySize = 4 and date like '%14%' and Customers.LastName like 'St%';