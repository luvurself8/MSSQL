use study
go

/*���̺�� �������� Ȱ��*/
/*���￡�� 20201012�� ������ ȸ�� �̸��� ���� �� ������ 500000 �̻�*/

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

-- �����������
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


/*���ϰ� ������ ��������*/
/*stockprice���� id�� 40853�̰� close_ ���� �ִ�*/

select * 
from StockPrice
where id = 40853
	and close_ = (select max(close_) 
					from StockPrice
					where id = 40853)

/*���� �� ��������*/
/*�ְ��� �ִ밪�� 500000�̻��� ���̵� ���� ȸ�� �̸�*/

select name
from companyinfo
where id in (
	select id from stockprice a 
	group by id
		having max(close_)>=500000
	)


/*View �����*/
/*���̺�ó�� Ȱ�� ����*/
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

/*View ����*/
drop view vw_stockpricewithname


/*with�� ���� ������������*/
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