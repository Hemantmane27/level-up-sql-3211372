-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.
select Type,Name,Price,Description 
from dishes 
order by price;
select Type,Name,Price,Description  
from dishes 
where type ='Appetizer' or type= 'Beverage' 
order by type;
select Type,Name,Price,Description  
from dishes 
where  type != 'Beverages'
order by type;