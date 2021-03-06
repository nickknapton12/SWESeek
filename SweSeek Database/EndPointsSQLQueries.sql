Endpoint 1:
INSERT INTO USERCREDENTIALS(email,firstName,lastName,phoneNumber,username,password) 
VALUES('jibran6@gmail.com','jibran','khan','2832389801','jbrn','jibn2193'); 

Endpoint 2:
Select * FROM USERCREDENTIALS WHERE username=’num4n’ AND password=’Numan1234’;

Endpoint 3: #correct
SELECT T.ListId, T.ListName
FROM TRACKINGLIST AS T
WHERE T.userName='CUSTOM'; 

SELECT M.Id,M.companyName,M.Position,M.link,M.applicationDate,M.applicationStatus,M.startDate,M.description
FROM TRACKINGLIST AS T ,MYJOBS AS M
WHERE M.ListId = T.listId; 

Endpoint 4: #correct
SELECT T.ListId, T.ListName
FROM TRACKINGLIST AS T
WHERE T.userName='CUSTOM' AND T.listName = 'CUSTOM'; 

SELECT M.Id,M.companyName,M.Position,M.link,M.applicationDate,M.applicationStatus,M.startDate,M.description
FROM TRACKINGLIST AS T ,MYJOBS AS M
WHERE T.listId=CUSTOM AND M.ListId = T.listId;  

Endpoint 4.1: 
UPDATE TRACKINGLIST AS T, MYJOBS AS M
SET applicationStatus = 'Offer Recieved'
WHERE listName = 'N/A'AND listId='N/A'AND T.Id =3 AND T.Id=M.Id; 

Endpoint 5:
INSERT INTO TRACKINGLIST (username, listName)
VALUES ('num4n', 'DataScience');

Endpoint 6:
INSERT INTO MYJOBS (JobId,userName,ApplicationStatus,ListId,ApplicationDate,companyName,position,startDate,CompanyId,link,description)
VALUES (1,'nick_knapton',	'Offer Recieved', 1	,'01-01-2022','Google','Back-End','01-01-2021','002','amazoncareers.ca','N/A')

Endpoint 7: #corrected
DELETE FROM MYJOBS WHERE listId=%s AND myJobId=%s AND userName=%s

Endpoint 8:
INSERT INTO JOBS (CompanyId, company, position, StartDate, link, Description)
VALUES ('003','IBM','Front-End','01-01-2022','ibmrecruitment.ca','N/A')

SELECT JobId FROM JOBS WHERE company = 'IBM' AND position = 'Front-End';

Endpoint 9: #correct
SELECT J.companyId,position,size,industry,link,description FROM JOBS AS J, COMPANYCREDENTIALS AS C WHERE J.companyId = C.companyId;

Endpoint 10: #correct
SELECT company,companySize,industry
FROM SALARY AS S, COMPANYCREDENTIALS AS C WHERE S.companyId = C.companyId;

SELECT company,role,totalComp
FROM SALARY AS S, COMPANYCREDENTIALS AS C WHERE S.companyId = C.companyId

Endpoint 11: #correct
SELECT company,companySize,industry
FROM SALARY AS S, COMPANYCREDENTIALS AS C WHERE S.companyId = C.companyId;

SELECT company,role,avg(totalComp) 
FROM SALARY AS S, COMPANYCREDENTIALS AS C 
WHERE S.companyId = C.companyId 
GROUP BY company; 

Endpoint 12:  #correct
INSERT INTO SALARY (company, companySize, role, totalComp)
VALUES ('CUSTOM', 'CUSTOM', 'CUSTOM', 9999);

Endpoint 13:
SELECT id,tags,topic,link
FROM LEARNINGRESOURCES;

SELECT tags,value
FROM RESOURCESTAG 
WHERE tags=1;

Endpoint 19: first get the tags(id) from learningresources table then use that to find the value from resourcestag
SELECT M.username,L.tags,L.topic,L.link
FROM LEARNINGRESOURCES AS L, MYLEARNINGRESOURCES AS M
WHERE M.username = 'zeeshansalim' AND M.learningId = L.tag

SELECT value
FROM RESOURCESTAG
WHERE tags=3;

Endpoint 15:  #correct
SELECT * FROM REVIEWS WHERE companyName ='CUSTOM';

Endpoint 16:
INSERT INTO USERDOCUMENTS (username,fileName,file,type)
VALUES('zeeshansalim','file 6','path6','pdf');

Endpoint 17.1:
SELECT fileName,dNo,file,type FROM USERDOCUMENTS WHERE userName ='num4n' AND fileName='file1';

Endpoint 17.2:
SELECT U.file,U.type 
FROM APPLIED AS A, USERDOCUMENTS AS U
WHERE A.username = 'nick_knapton' AND  JobId = 2 AND U.dNo = A.dNo


Endpoint 18:
INSERT INTO APPLIED(username,JobId)
VALUES ('zeeshansalim','5','2');

Endpoint 19: first get the tags(id) from learningresources table then use that to find the value from resourcestag
SELECT M.username,L.tags,L.topic,L.link
FROM LEARNINGRESOURCES AS L, MYLEARNINGRESOURCES AS M
WHERE M.username = 'zeeshansalim' AND M.learningId = L.tag

Endpoint 19.1: first insert into LEARNINGRESOURCES, then get the auto generated Id, use that Id along with username to insert into MYLEARNINGRESOURCES
                use the tag to add to RESOURCESTAG
INSERT INTO LEARNINGRESOURCES (tags,topic,link)
VALUES (4,'coding tutorials','hackthechallenge.com');

SELECT Id FROM LEARNINGRESOURCES WHERE tags=4 AND topic ='coding tutorials';

INSERT INTO MYLEARNINGRESOURCES (username,learningId)
VALUES ('zeeshansalim', 7);

INSERT INTO RESOURCESTAG (tags,value)
VALUES(4,'#easycode');

Endpoint 19.2:
DELETE FROM MYLEARNINGRESOURCES WHERE username ='num4n' AND learningId =2; 

Endpoint 20:
SELECT M.id,Q.tags,Q.qPrompt,Q.questionNum,Q.link,Q.description
FROM MYQUESTIONRESOURCES AS M, QUESTIONRESOURCES AS Q
WHERE username = 'num4n' AND M.id = Q.Id;

SELECT value
FROM QUESTIONTAGS
WHERE tags=3;

Endpoint 20.1:
INSERT INTO MYQUESTIONRESOURCES(username,id)
VALUES ('num4n', id);

Endpoint 20.2:
DELETE FROM MYQUESTIONRESOURCES WHERE username='num4n' AND id=1

Endpoint 21.1: First get CompanyId using companyName, then use that CompanyId to add to JOBS along with the provided data.
SELECT CompanyId FROM COMPANYCREDENTIALS WHERE companyName = 'Blizzard';
INSERT INTO JOBS (CompanyId, company, position, StartDate, link, Description)
VALUES ('006','Blizzard',	'Back-End','11-02-2020','blizzardhiring.ca','N/A');

Endpoint 21.2: First get the JobId using the companyName and position, then delete the row in JOBS using the JobId
SELECT JobId FROM JOBS WHERE company ='Amazon' AND position ='Back-End';
DELETE FROM JOBS WHERE JobId=1;

Endpoint 21.3: considering that we know the JobId from before.
UPDATE JOBS
SET startdate = '09-09-2029',description='very long', link = 'newmicro.com'
WHERE company = 'Microsoft'AND JobId=7 AND position='Full-Stack';

Endpoint 22:
SELECT JobId,position,startDate,link,description
FROM JOBS
WHERE company ='Microsoft'; 

EndPoint 23:
DELETE FROM APPLIED WHERE userName='num4n' AND dNo=1;
DELETE FROM USERDOCUMENTS WHERE userName='num4n' AND dNo=1;

Endpoint 24:
INSERT INTO COMPANYCREDENTIALS(companyName, username, industry, size, password)
VALUES ('DoorDash','DDSH','food delivery','doordashjobs.ca','HDWO2347');

