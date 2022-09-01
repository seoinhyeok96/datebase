-- 대상: Products 조건  categoryID :3,6 표현 Price 30<저렴, 60> 비쌈 , 30~60 : 적당 정렬 supplierid :내림차순
SELECT Price,
CASE 
	WHEN price > 30 THEN '저렴'
	WHEN price < 60 THEN '비쌈'
	ELSE '적당'
	END AS price_A
FROM Products
WHERE categoryID IN(3,6)
order by supplierid desc;
        