use study
go

/*집계함수*/
select
	sum(Employees) as "합산",
	avg(Employees) as "평균",
	min(Employees) as "최솟값",
	max(Employees) as "최댓값",
	count(Employees) as "갯수"
from companyinfo

/*문자열 함수*/
print len(' Abc Def Fed Cba ')
print ltrim(' Abc Def Fed Cba ')
print rtrim(' Abc Def Fed Cba ')
print trim(' Abc Def Fed Cba ')
print upper(' Abc Def Fed Cba ')
print lower(' Abc Def Fed Cba ')
-- 왼쪽에서 4자 출력
print left(' Abc Def Fed Cba ',4)
-- 오른쪽에서 4자 출력
print right(' Abc Def Fed Cba ',4)
-- 거꾸로 출력
print reverse(' Abc Def Fed Cba ')
-- 특정 패턴 치환
print replace(' Abc Def Fed Cba ','Abc','ZZZ')
-- 특정 패턴 반복
print replicate('HI',10)
--공백을 여러개 출력
print '['+space(10)+']'
--정수형을 문자열로 반환
print str(12345) +space(1)+'have dinner with me'
-- 문자열 검색 : 시작점, 길이
print substring(' Abc Def Fed Cba ',6,3)
--특정 문자열 위치값 검색
print charindex('Def','Abc Def Fed')


/*날짜 관련 함수*/
-- 현재 날짜
print getdate()
-- 연도
print year(getdate())
-- 월
print month(getdate())
-- 날짜
print day(getdate())

--초의 차이
print abs(datediff(second,getdate(),'2012-12-25'))
-- 분의차이
print abs(datediff(minute,getdate(),'2012-12-25'))
-- 시간의 차이
print abs(datediff(hour,getdate(),'2012-12-25'))
-- 날의 차이
print abs(datediff(day,getdate(),'2012-12-25'))
-- 월의 차이
print abs(datediff(month,getdate(),'2012-12-25'))
-- 연도의 차이
print abs(datediff(year,getdate(),'2012-12-25'))

-- 날짜를 더함
print dateadd(month, 3, getdate())
print dateadd(year,3,getdate())
print dateadd(hour,3,getdate())

/*형식 변환 함수*/

--cast , convert
print str(2020)+ N'년'
print cast(2020 as varchar)+ N'년'
print convert(varchar, 2020)+N'년'

print cast(getdate() as varchar)
print convert(varchar(8), getdate(),112)
