/*select */
use study
go 
select * from companyinfo

-- �����, ����, �����ڵ� ��������
select name,city,IncInCtryCode  from companyinfo


/*distinct
: �ߺ����� �ʴ� ��*/

select distinct incinctrycode from companyinfo

/*where
: */
-- incincrtycode�� kor�� ���
select * from companyinfo where IncInCtryCode ='kor'

-- employees�� 10���� �̻��� ���
select * from companyinfo where Employees >= 100000

/*and, or, not ������*/

-- incincrtycode�� kor�̸� employees�� 10���� �̻��� ���
select * from companyinfo where IncInCtryCode ='kor'and Employees >= 100000

-- city ���� seoul�̰ų� busan �� ��� ���ڵ� ��������
select * from companyinfo where city ='seoul' or city = 'busan'

--incinctrycode ���� usa�� �ƴ� ��� ���ڵ� 
select * from companyinfo where IncInCtryCode != 'usa'
select * from companyinfo where not IncInCtryCode = 'usa'

-- incinctrycode���� usa�� �ƴϰ� jpn�� �ƴ� ��� ���ڵ� ��������
select * from companyinfo where IncInCtryCode != 'usa' and IncInCtryCode !='jpn'
select * from companyinfo where not (IncInCtryCode = 'usa' or IncInCtryCode ='jpn')

/*like
���ϵ�ī��� ���� ���� -> % �ƴϸ� _
*/
-- ȸ�� �̸��� a�� ����
select * from companyinfo where name like 'a%'

-- a�� �����ϰ� �ڿ��� 4���� ���ڷ� �̷���� �̸� ã��
select * from companyinfo where name like 'a____'

/*���� : order by
�������� desc
�������� asc
*/

-- incinctrycode, employees, name �� �����ڵ��� ���ĺ� ������� ����
-- null ����!
select incinctrycode, employees, name from companyinfo 
where IncInCtryCode is not null
order by IncInCtryCode


-- incinctrycode, employees, name �� �����ڵ��� ���ĺ� ������� �����ϰ�, employees�� ū������ ����������
-- null ����!
select incinctrycode, employees, name from companyinfo 
where IncInCtryCode is not null
order by IncInCtryCode, employees desc