#날짜 : 2023/06/27
#이름 : 최정민
#내용 : University 모델링실습

# 문제1 모든 학생의 학생번호, 이름, 휴대폰, 학과번호, 학과명을 조회하시오.
SELECT a.`stdNo`, a.`stdName`, a.`stdHp`, b.`depNo`, b.`depName` 
FROM `Student` AS a 
JOIN `Departments` AS b 
ON a.depNo=b.depNo;

# 문제2 모든 교수의 교수번호, 이름, 휴대폰, 학과번호, 학과명을 조회하시오.
SELECT a.`proNo`, a.`proName`, a.`proHp`, b.`depNo`, b.`depName` 
FROM `Professors` AS a 
JOIN `Departments` AS b 
ON a.depNo=b.depNo;

# 문제3 모든 강좌의 강좌번호, 강좌명, 담당교수명, 휴대폰을 조회하시오.
SELECT a.`lecNo`, a.`lecName`, b.`proName`, b.`proHp` 
FROM `Lectures` AS a
JOIN `Professors` AS b
ON a.proNo=b.proNo; 

# 문제4. 모든 강좌의 강좌번호, 강좌명, 담당교수 번호, 담당교수명, 휴대폰, 학과번호, 학과명을 조회하시오.
SELECT
	a.`lecNo`, 
	a.`lecName`, 
	b.`proNo`, 
	b.`proName`, 
	b.`proHp`, 
	c.`depNo`, 
	c.`depName` 
FROM `Lectures` AS a
JOIN `Professors` AS b ON a.proNo=b.proNo
JOIN `Departments` AS c ON b.depNo=c.depNo;


# 문제5. 모든 수강신청 내역에서 학생번호, 학생명, 강좌번호, 강좌명, 교수번호, 교수명을 조회하시오.
SELECT 
	b.`stdNo`, 
	b.`stdName`, 
	d.`lecNo`, 
	d.`lecName`, 
	c.`proNo`, 
	c.`proName` 
FROM `Register` AS a
JOIN `Student` AS b ON a.stdNo=b.stdNo
JOIN `Professors` AS c ON a.proNo=b.proNo
JOIN `Lectures` AS d ON a.lecNo=d.lecNo;

# 문제6. 수강신청 테이블에 츨석점수, 중간고사점수, 기말고사 점수를 임의로 입력하시오.(1~100사이)
UPDATE `Register` SET `regAttenScore`=80, `regMidScore`=50, `regFinalScore`=90
WHERE `stdNo`='20101001' AND `lecNo`='101001' AND `proNo`='P10101'; 
UPDATE `Register` SET `regAttenScore`=60, `regMidScore`=80, `regFinalScore`=80
WHERE `stdNo`='20101001' AND `lecNo`='101002' AND `proNo`='P10102'; 
UPDATE `Register` SET `regAttenScore`=100, `regMidScore`=50, `regFinalScore`=75
WHERE `stdNo`='20111013' AND `lecNo`='111011' AND `proNo`='P11103'; 
UPDATE `Register` SET `regAttenScore`=100, `regMidScore`=40, `regFinalScore`=50
WHERE `stdNo`='21231002' AND `lecNo`='231110' AND `proNo`='P23102'; 
UPDATE `Register` SET `regAttenScore`=10, `regMidScore`=30, `regFinalScore`=90
WHERE `stdNo`='22401001' AND `lecNo`='401019' AND `proNo`='P40101'; 
UPDATE `Register` SET `regAttenScore`=30, `regMidScore`=90, `regFinalScore`=80
WHERE `stdNo`='22401001' AND `lecNo`='421012' AND `proNo`='P42103'; 
UPDATE `Register` SET `regAttenScore`=70, `regMidScore`=100, `regFinalScore`=60
WHERE `stdNo`='20101001' AND `lecNo`='101003' AND `proNo`='P10102'; 
UPDATE `Register` SET `regAttenScore`=45, `regMidScore`=20, `regFinalScore`=50
WHERE `stdNo`='22421003' AND `lecNo`='311003' AND `proNo`='P31104'; 
UPDATE `Register` SET `regAttenScore`=90, `regMidScore`=55, `regFinalScore`=45
WHERE `stdNo`='22421003' AND `lecNo`='421012' AND `proNo`='P42103'; 
UPDATE `Register` SET `regAttenScore`=80, `regMidScore`=50, `regFinalScore`=20
WHERE `stdNo`='20111013' AND `lecNo`='111012' AND `proNo`='P11104'; 

UPDATE `Register` SET
				`regAttenScore` = CEIL(RAND() * 100),
				`regMidScore` = CEIL(RAND() * 100),
				`regFinalScore` = CEIL(RAND() * 100),

# 문제7. 수강 신청 테이블에 입력한 출석점수, 중간고사점수, 기말고사 점수를 모두 합산 후 평균을 구해 총점에 입력하시오.
UPDATE `Register` SET `regTotal`=(`regAttenScore` + `regMidScore` + `regFinalScore`) / 3;

# 문제8. 수강신청 테이블에 총점을 기준을 A ~ F등급을 입력하시오.
UPDATE `Register` SET
				`regGrade`= if(`regTotal` >=90,'A',
								if(`regTotal` >=80, 'B',
								if(`regTotal` >=70, 'C',
								if(`regTotal` >=60, 'D', 'F')))); 

# 문제9. 수강신청 테이블에서 총점이 가장 큰 점수를 조회하시오.
SELECT `regTotal` FROM `Register` ORDER BY `regTotal` DESC LIMIT 1;

# 문제10.수강신청 테이블에서 정우성 학생의 총점의 평균을 조회하시오.
 SELECT * FROM AVG(`regTotal`) FROM `Register`AS a
 JOIN `Students` AS b ON a.stdNo=b.stdNo
 WHERE `stdName`='정우성';