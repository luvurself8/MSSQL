use study
go

/*주식 가격과 기업의 정보 연결하기*/

select * from StockPrice
-- 주식 가격 : close
select * from companyinfo
-- company 이름 : Name

--공통 : id

select 
	companyinfo.id as "회사번호",
	companyinfo.name as "회사이름",
	stockprice.close_ as "주식가격"
	from companyinfo
	join stockprice
	on companyinfo.id = stockprice.id

-- 테이블 명에 alias를 주어서 간소화하기

select 
	a.id as "회사번호",
	a.name as "회사이름",
	b.close_ as "주식가격"
	from companyinfo a
	join stockprice b
	on a.id = b.id


/*left join*/
/*company info 테이블과 industryinfo 테이블을 IND_ID 기준으로 leftjoin 하기*/

select 
	a.Name,
	a.IND_ID,
	b.IND_Name
from companyinfo a
left join IndustryInfo b
on a.IND_ID = b.IND_ID


/*full outer join*/
/*company info 테이블과 industryinfo 테이블을 IND_ID 기준으로 full outer join 하기*/
select 
	a.Name,
	a.IND_ID,
	b.IND_Name
from companyinfo a
full outer join IndustryInfo b
on a.IND_ID = b.IND_ID


/*여러 테이블 중첩하기*/
/*companyinfo 테이블과 descriptions 를 중첩하기 위해 idmap 사용*/
select * from IDMap
select * from Descriptions

select
	a.Name,
	b.FIN_ID,
	c.Description
from companyinfo a
join IDMap b
	on a.ID = b.ID
join Descriptions c
	on b.FIN_ID = c.FIN_ID

