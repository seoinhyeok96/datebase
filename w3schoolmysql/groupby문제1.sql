https://www.w3schools.com/mysql/trymysql.asp?filename=trysql_select_groupby
---- Category ID 별로 sum, count, avg price 보기
-- 테이블은 Products
SELECT sum(price) ,count(price),avg(price)
FROM Products 
group by categoryid ;
