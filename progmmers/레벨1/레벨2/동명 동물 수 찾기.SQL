https://school.programmers.co.kr/learn/courses/30/lessons/59041
-- 동물 보호소에 들어온 동물 이름 중 두 번 이상 쓰인 이름과 해당 이름이 쓰인 횟수를 조회하는 SQL문을 작성해주세요. 이때 결과는 이름이 없는 동물은 집계에서 제외하며, 결과는 이름 순으로 조회해주세요.
SELECT A.NAME , A.CNT 
FROM  (SELECT NAME ,count(NAME) AS CNT     --------- count(NAME)를 CNT로 이름 변경
from ANIMAL_INS
where NAME is not null
GROUP BY NAME) AS A 
-----A라는 테이플을 만들어 묶었다.----
WHERE A.CNT >= 2 
ORDER BY A.NAME