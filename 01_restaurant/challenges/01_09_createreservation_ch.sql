-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)

select * from customers where firstname = 'Sam';

insert into customers 
(FirstName, LastName, Email, Address, City, State, Phone, Birthday)
VALUES
('Sam','McAdams','smac@kinetecoinc.com',null, null, null,
null,null);
select * from Reservations where customerid = 102;

insert into Reservations (customerid,date,PartySize)
VALUES
('102','2022-08-12 18:00:00',5);