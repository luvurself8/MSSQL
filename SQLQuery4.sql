use study
go

/*�ֽ� ���ݰ� ����� ���� �����ϱ�*/

select * from StockPrice
-- �ֽ� ���� : close
select * from companyinfo
-- company �̸� : Name

--���� : id

select 
	companyinfo.id as "ȸ���ȣ",
	companyinfo.name as "ȸ���̸�",
	stockprice.close_ as "�ֽİ���"
	from companyinfo
	join stockprice
	on companyinfo.id = stockprice.id

-- ���̺� �� alias�� �־ ����ȭ�ϱ�

select 
	a.id as "ȸ���ȣ",
	a.name as "ȸ���̸�",
	b.close_ as "�ֽİ���"
	from companyinfo a
	join stockprice b
	on a.id = b.id


/*left join*/
/*company info ���̺�� industryinfo ���̺��� IND_ID �������� leftjoin �ϱ�*/

select 
	a.Name,
	a.IND_ID,
	b.IND_Name
from companyinfo a
left join IndustryInfo b
on a.IND_ID = b.IND_ID


/*full outer join*/
/*company info ���̺�� industryinfo ���̺��� IND_ID �������� full outer join �ϱ�*/
select 
	a.Name,
	a.IND_ID,
	b.IND_Name
from companyinfo a
full outer join IndustryInfo b
on a.IND_ID = b.IND_ID


/*���� ���̺� ��ø�ϱ�*/
/*companyinfo ���̺�� descriptions �� ��ø�ϱ� ���� idmap ���*/
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

