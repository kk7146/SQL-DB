SELECT *
FROM recriutment A FULL OUTER JOIN upload_recruit B
ON (A.recruit_code = B.recruit_code)
WHERE B.comp_code = 'UNIV2024' AND A.now_headcount < A.recruit_headcount
ORDER BY A.start_day;