select u.id,u.first_name,u.last_name,c.id,c.customer_name,
count(c.id) as number_of_contacts
from customer c
join contact co on co.customer_id=c.id
join user_account u on u.id=co.user_account_id
group  by 
u.id,u.first_name,u.last_name,c.id,c.customer_name
having count(c.id)>1;
