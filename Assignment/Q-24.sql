use item;

select PRO_COM , avg(PRO_PRICE)
from item_mast
group by PRO_COM;