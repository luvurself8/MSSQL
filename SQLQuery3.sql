use study
go 
/*�ֽ� ���� ���̺� ���
select * from StockPrice
*/

/* �Ｚ������ id ã��
select * from companyinfo
where id = 40853

*/

/*id���� 40853�� �Ｚ������ �ְ�,�ּҰ�,��հ��� �˾ƺ���*/
select max(close_)as "�ְ�", 
	min(close_) as "�ּҰ�", 
	avg(close_) as "��հ�"
from StockPrice
where id = 40853


/*����� �ִ�, �ּ�, ���, �ŷ��ϼ� �˾ƺ���,�ŷ��ϼ� ���� ����*/
select 
	id,
	max(close_)as "�ְ�", 
	min(close_) as "�ּҰ�", 
	avg(close_) as "��հ�",
	count(*) as "�ŷ��ϼ�"
from StockPrice
group by id
order by �ŷ��ϼ�


/*companyinfo ���̺��� ����ؼ� ���ø� �������� �� ����� ��� ����ߴ��� �˾ƺ���*/
select
	city,
	sum (employees) as "�����",
	count(*) as "ȸ�� ��"

from companyinfo
where city is not null and Employees is not null
group by city
order by ����� desc

/*������� 200���� �̻��� ����*/

select
	city,
	sum (employees) as "�����",
	count(*) as "ȸ���"

from companyinfo
group by city
having sum (employees) >=2000000
order by ����� desc