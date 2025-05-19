select sku, product_name 
from product
minus
select p.sku, p.product_name 
from product p
join invoice_item i on p.id = i.product_id;
