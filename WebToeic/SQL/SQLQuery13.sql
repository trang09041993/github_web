ALTER TABLE grammarGuideline
ALTER COLUMN grammarName nvarchar(100)

delete from grammarGuideline where grammarGuidelineId >4

insert into grammarGuideline(grammarName,grammarImage,content) 
values(N'HƯỚNG DẪN CÁCH TƯ DUY MỘT SỐ LOẠI CÂU HỎI THÚ VỊ TRONG TOEIC READING','image1','sd jhi ashaj')

select * from grammarGuideline between 0 and 3

select top 3 * from grammarGuideline 

SELECT * FROM grammarGuideline ORDER BY grammarGuidelineId OFFSET 1 ROWS FETCH NEXT 2 ROWS ONLY;

  
  insert into examination(examinationName,examinationImage) 
values('exam1','image1')
delete from examination where examinationId >4
ALTER TABLE examination
ADD checkedcauhoi int DEFAULT NULL

ALTER TABLE listenExercise
ADD checkedcauhoi int DEFAULT NULL

INSERT INTO examination VALUES (null,null,null)

delete from examinationQuestion
select * from examinationQuestion

delete from examination
select * from examination
select * from result

ALTER TABLE vocabularyGuideline
ADD checknoidung int



ALTER TABLE vocabularyContent
ADD num int
ALTER TABLE vocabularyContent
ADD image nvarchar(45)
ALTER TABLE vocabularyContent
ALTER COLUMN mean nvarchar(100)

ALTER TABLE vocabularyContent
ALTER COLUMN transcribe nvarchar(100)


select * from vocabularyGuideline
select * from vocabularyContent
UPDATE vocabularyGuideline
SET checknoidung=0
WHERE vocabularyGuidelineId=1;
delete from vocabularyContent
insert into vocabularyContent(num,vocabularyContentName,transcribe,image,audioMp3,audioGg,mean,vocabularyGuidelineId)
values(1,'attract ',N'/ə''trækt/','Marketing_attract.jpg','Marketing_attract.mp3','Marketing_attract.oog',N'(v): hấp dẫn, lôi cuốn, thu hút',1)

ALTER TABLE slideBanner
ALTER COLUMN slideName nvarchar(100)

insert into slideBanner(slideName,slideContent,slideImage)
values (N'ĐỀ THI THỬ-ĐÁP ÁN CHI TIẾT',N'Cung cấp đầy đủ và hướng dẫn chi tiết','images.jpg')
select * from slideBanner

select * from vocabularyGuideline
select * from vocabularyContent
select * from readExercise
select * from readQuestion

ALTER TABLE readExercise
ADD checkcauhoi int

ALTER TABLE listenQuestion
ADD num int

select * from listenQuestion


alter table result
add constraint FK_result_exam
foreign key(examinationId)
references examination(examinationId)

ALTER TABLE result
ALTER COLUMN examinationId int not null


exec sp_rename 'examinationQuestion','Question';
exec sp_rename 'Question.Question.QuestionId','QuestionId';
ALTER TABLE Question
ADD type bit
ALTER TABLE Question
ADD part int
ALTER TABLE Question
ADD topic nvarchar(100)
ALTER TABLE examination
ADD QuestionId int

ALTER TABLE examination
ALTER COLUMN QuestionId int not null

alter table examination
add constraint FK_Que_exam
foreign key(QuestionId)
references Question(QuestionId)

ALTER TABLE listenExercise
Add QuestionId int not null

alter table listenExercise
add constraint FK_Que_liEx
foreign key(QuestionId)
references Question(QuestionId)

