use study
go 
/*주식 가격 테이블 사용
select * from StockPrice
*/

/* 삼성전자의 id 찾기
select * from companyinfo
where id = 40853

*/

/*id값이 40853인 삼성전자의 최고가,최소가,평균가격 알아보기*/
select max(close_)as "최고가", 
	min(close_) as "최소가", 
	avg(close_) as "평균가"
from StockPrice
where id = 40853


/*기업별 최대, 최소, 평균, 거래일수 알아보기,거래일수 기준 정렬*/
select 
	id,
	max(close_)as "최고가", 
	min(close_) as "최소가", 
	avg(close_) as "평균가",
	count(*) as "거래일수"
from StockPrice
group by id
order by 거래일수


/*companyinfo 테이블을 사용해서 도시를 기준으로 각 기업이 몇명 고용했는지 알아보기*/
select
	city,
	sum (employees) as "고용인",
	count(*) as "회사 수"

from companyinfo
where city is not null and Employees is not null
group by city
order by 고용인 desc

/*고용인이 200만명 이상인 도시*/

select
	city,
	sum (employees) as "고용인",
	count(*) as "회사수"

from companyinfo
group by city
having sum (employees) >=2000000
order by 고용인 desc