select 
    pd.prod_num, 
    pd.prod_name, 
    pd.sell_price, 
    pp.quantity, 
    usr.user_id, 
    usr.phone_number, 
    pp.pay_type, 
    pp.delivery_pay, 
    pp.apply_point,
    pp.pay_amount,
    ps.pur_state
from prod_purchase pp, product pd, usr, purchase_state ps 
where (
    (pp.prod_num = pd.prod_num)
    AND (pp.user_id = usr.user_id(+))
    AND (pp.pur_state = ps.code(+))
    AND pd.user_id = '&user'
    )
order by ps.pur_state DESC; 