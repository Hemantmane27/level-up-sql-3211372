-- Update a customer's contact information.

-- Taylor Jenkins, of 27170 6th Ave., Washington, DC,
-- has moved to 74 Pine St., New York, NY.
select * 
from customers 
where firstname = 'Taylor'
and lastname = 'Jenkins';

update customers set address = '74 Pine St.',
city = 'New York', state = 'NY' 
where firstname = 'Taylor'
and lastname = 'Jenkins'
and Address = '27170 6th Ave.';