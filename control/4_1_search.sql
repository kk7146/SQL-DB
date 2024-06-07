SELECT pd.prod_num, pd.prod_name,pd.prime_price, pd.sell_price, (pd.prime_price - pd.sell_price) AS DISCOUNT, pd.prod_amount, pd.sell_state, pd.user_id
FROM product pd
WHERE (pd.prod_num IN 
        (SELECT p.prod_num 
         FROM product p
         JOIN follow f ON p.user_id = f.usr_ob
         WHERE f.usr_sub = '&user'
        )) AND pd.sell_state = '판매중'
ORDER BY (pd.prime_price - pd.sell_price) DESC, prod_amount;