SELECT *
FROM design A FULL OUTER JOIN (SELECT * FROM design_sign_up WHERE user_id = 'user02') B
ON (A.design_num = B.design_num)
WHERE B.user_id = 'user02' AND A.design_likes = (SELECT MAX(design_likes) FROM design);