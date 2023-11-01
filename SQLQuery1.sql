/*데이터베이스 지정 1:  use */
use study
go -- 코드 구분자 ( 작업별로 작업 구분)
select * from companyinfo


/*데이터베이스 지정 2:  데이터베이스.dbo.테이블명 
dbo = databaseowner*/
select * from study.dbo.companyinfo 

/*데이터베이스 지정 3:  데이터베이스..테이블명 */
select * from study..companyinfo
