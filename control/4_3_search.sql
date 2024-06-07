SELECT *
FROM(
    SELECT post.*, pli.sum_pt_num
    FROM post
    LEFT JOIN (
        SELECT pt_num, COUNT(pt_num) AS sum_pt_num
        FROM post_like_in pli
        WHERE pli.user_id IN (
                                SELECT user_id 
                                from usr
                                where gender = '&성별'
        )
        GROUP BY pt_num
    ) pli ON post.pt_num = pli.pt_num
    WHERE pli.sum_pt_num IS NOT NULL
    ORDER BY pli.sum_pt_num DESC
)
WHERE ROWNUM <= 5;