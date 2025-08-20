select database();
use food_db;
select database();

select * from items;
select * from variants;

-- Cross Join:
select *
from items cross join variants;

select *, concat(name, ' ', variant_name) as full_name,
		price + variant_price as final_price
from items cross join variants;

