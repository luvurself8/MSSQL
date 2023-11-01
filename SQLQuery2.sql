/*select */
use study
go 
select * from companyinfo

-- 기업명, 도시, 국가코드 가져오기
select name,city,IncInCtryCode  from companyinfo


/*distinct
: 중복되지 않는 값*/

select distinct incinctrycode from companyinfo

/*where
: */
-- incincrtycode가 kor인 기업
select * from companyinfo where IncInCtryCode ='kor'

-- employees가 10만명 이상인 기업
select * from companyinfo where Employees >= 100000

/*and, or, not 연산자*/

-- incincrtycode가 kor이며 employees가 10만명 이상인 기업
select * from companyinfo where IncInCtryCode ='kor'and Employees >= 100000

-- city 값이 seoul이거나 busan 인 기업 레코드 가져오기
select * from companyinfo where city ='seoul' or city = 'busan'

--incinctrycode 값이 usa가 아닌 모든 레코드 
select * from companyinfo where IncInCtryCode != 'usa'
select * from companyinfo where not IncInCtryCode = 'usa'

-- incinctrycode값이 usa도 아니고 jpn도 아닌 기업 레코드 가져오기
select * from companyinfo where IncInCtryCode != 'usa' and IncInCtryCode !='jpn'
select * from companyinfo where not (IncInCtryCode = 'usa' or IncInCtryCode ='jpn')

/*like
와일드카드로 패턴 형성 -> % 아니면 _
*/
-- 회사 이름이 a로 시작
select * from companyinfo where name like 'a%'

-- a로 시작하고 뒤에는 4개의 문자로 이루어진 이름 찾기
select * from companyinfo where name like 'a____'

/*정렬 : order by
내림차순 desc
오름차순 asc
*/

-- incinctrycode, employees, name 을 국가코드의 알파벳 순서대로 정렬
-- null 뺴고!
select incinctrycode, employees, name from companyinfo 
where IncInCtryCode is not null
order by IncInCtryCode


-- incinctrycode, employees, name 을 국가코드의 알파벳 순서대로 정렬하고, employees는 큰값에서 작은값으로
-- null 뺴고!
select incinctrycode, employees, name from companyinfo 
where IncInCtryCode is not null
order by IncInCtryCode, employees desc