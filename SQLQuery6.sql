use study
go

/*�����Լ�*/
select
	sum(Employees) as "�ջ�",
	avg(Employees) as "���",
	min(Employees) as "�ּڰ�",
	max(Employees) as "�ִ�",
	count(Employees) as "����"
from companyinfo

/*���ڿ� �Լ�*/
print len(' Abc Def Fed Cba ')
print ltrim(' Abc Def Fed Cba ')
print rtrim(' Abc Def Fed Cba ')
print trim(' Abc Def Fed Cba ')
print upper(' Abc Def Fed Cba ')
print lower(' Abc Def Fed Cba ')
-- ���ʿ��� 4�� ���
print left(' Abc Def Fed Cba ',4)
-- �����ʿ��� 4�� ���
print right(' Abc Def Fed Cba ',4)
-- �Ųٷ� ���
print reverse(' Abc Def Fed Cba ')
-- Ư�� ���� ġȯ
print replace(' Abc Def Fed Cba ','Abc','ZZZ')
-- Ư�� ���� �ݺ�
print replicate('HI',10)
--������ ������ ���
print '['+space(10)+']'
--�������� ���ڿ��� ��ȯ
print str(12345) +space(1)+'have dinner with me'
-- ���ڿ� �˻� : ������, ����
print substring(' Abc Def Fed Cba ',6,3)
--Ư�� ���ڿ� ��ġ�� �˻�
print charindex('Def','Abc Def Fed')


/*��¥ ���� �Լ�*/
-- ���� ��¥
print getdate()
-- ����
print year(getdate())
-- ��
print month(getdate())
-- ��¥
print day(getdate())

--���� ����
print abs(datediff(second,getdate(),'2012-12-25'))
-- ��������
print abs(datediff(minute,getdate(),'2012-12-25'))
-- �ð��� ����
print abs(datediff(hour,getdate(),'2012-12-25'))
-- ���� ����
print abs(datediff(day,getdate(),'2012-12-25'))
-- ���� ����
print abs(datediff(month,getdate(),'2012-12-25'))
-- ������ ����
print abs(datediff(year,getdate(),'2012-12-25'))

-- ��¥�� ����
print dateadd(month, 3, getdate())
print dateadd(year,3,getdate())
print dateadd(hour,3,getdate())

/*���� ��ȯ �Լ�*/

--cast , convert
print str(2020)+ N'��'
print cast(2020 as varchar)+ N'��'
print convert(varchar, 2020)+N'��'

print cast(getdate() as varchar)
print convert(varchar(8), getdate(),112)
