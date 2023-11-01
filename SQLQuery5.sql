use study
go

/*테이블로 서브쿼리 활용*/
/*서울에서 20201012에 개래된 회사 이름과 종가 중 종가가 500000 이상*/

select * from companyinfo
select * from stockprice

select 
	a.name,
	b.close_
from companyinfo a
join stockprice b
	on a.ID = b.ID
where a.City = 'SEOUL'
	and b.Date_ = '20201012'
	and b.close_ >= 500000

-- 서브쿼리사용
select c.name, c.close_ 
from
(select 
	a.name,
	b.close_
from companyinfo a
join stockprice b
	on a.ID = b.ID
where a.City = 'SEOUL'
	and b.Date_ = '20201012') c
where c.close_ >= 500000


/*단일값 형태의 서브쿼리*/
/*stockprice에서 id가 40853이고 close_ 값이 최대*/

select * 
from StockPrice
where id = 40853
	and close_ = (select max(close_) 
					from StockPrice
					where id = 40853)

/*단일 열 서브쿼리*/
/*주가의 최대값이 500000이상인 아이디를 가진 회사 이름*/

select name
from companyinfo
where id in (
	select id from stockprice a 
	group by id
		having max(close_)>=500000
	)


/*View 만들기*/
/*테이블처럼 활용 가능*/
create view vw_stockpricewithname
as 
select 
	a.name,
	a.id,
	b.Date_,
	b.close_
from companyinfo a
join stockprice b
	on a.id = b.id 


select *
from vw_stockpricewithname

/*View 삭제*/
drop view vw_stockpricewithname


/*with를 통한 서브쿼리재사용*/
with temp as(
select 
	a.Name,
	a.id,
	b.Date_,
	b.close_
from companyinfo a
join stockprice b
	on a.id = b.id
)

select * from temp