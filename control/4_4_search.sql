SELECT r.res_day, u.user_name, u.phone_number
FROM reserve r
JOIN usr u ON r.user_id = u.user_id
WHERE r.show_num IN (
    SELECT show_num
    FROM showroom
    WHERE user_id = 'user06'
)
ORDER BY r.res_day;