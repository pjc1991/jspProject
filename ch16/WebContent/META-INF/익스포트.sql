--------------------------------------------------------
--  파일이 생성됨 - 화요일-7월-28-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BOARD
--------------------------------------------------------

  CREATE TABLE "J20200701"."BOARD" 
   (	"NUM" NUMBER, 
	"WRITER" VARCHAR2(20 BYTE), 
	"SUBJECT" VARCHAR2(20 BYTE), 
	"CONTENT" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(20 BYTE), 
	"READCOUNT" NUMBER, 
	"PASSWD" VARCHAR2(20 BYTE), 
	"REF" NUMBER, 
	"RE_STEP" NUMBER, 
	"RE_LEVEL" NUMBER, 
	"IP" VARCHAR2(20 BYTE), 
	"REG_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table BOOK_MIND
--------------------------------------------------------

  CREATE TABLE "J20200701"."BOOK_MIND" 
   (	"ID" VARCHAR2(30 BYTE), 
	"M_IDX" NUMBER, 
	"IDX" NUMBER, 
	"MIND" VARCHAR2(20 BYTE), 
	"REG_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "J20200701"."BOOK_MIND"."ID" IS '회원아이디';
   COMMENT ON COLUMN "J20200701"."BOOK_MIND"."M_IDX" IS '영화번호';
   COMMENT ON COLUMN "J20200701"."BOOK_MIND"."IDX" IS '순번';
   COMMENT ON COLUMN "J20200701"."BOOK_MIND"."MIND" IS '찜한 영화';
   COMMENT ON COLUMN "J20200701"."BOOK_MIND"."REG_DATE" IS '등록날짜';
   COMMENT ON TABLE "J20200701"."BOOK_MIND"  IS '즐겨찾기-찜하기';
--------------------------------------------------------
--  DDL for Table COMM
--------------------------------------------------------

  CREATE TABLE "J20200701"."COMM" 
   (	"C_IDX" NUMBER, 
	"ID" VARCHAR2(30 BYTE), 
	"C_CONTENT" VARCHAR2(4000 BYTE), 
	"C_SYMPATHY" NUMBER, 
	"C_UNSYMPATHY" NUMBER, 
	"C_GRADE" NUMBER, 
	"C_DATE" DATE, 
	"DEL_YN" VARCHAR2(2 BYTE), 
	"M_IDX" NUMBER, 
	"STEP" NUMBER, 
	"DEP" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "J20200701"."COMM"."C_IDX" IS '댓글번호';
   COMMENT ON COLUMN "J20200701"."COMM"."ID" IS '회원아이디';
   COMMENT ON COLUMN "J20200701"."COMM"."C_CONTENT" IS '댓글내용';
   COMMENT ON COLUMN "J20200701"."COMM"."C_SYMPATHY" IS '공감수';
   COMMENT ON COLUMN "J20200701"."COMM"."C_UNSYMPATHY" IS '비공감수';
   COMMENT ON COLUMN "J20200701"."COMM"."C_GRADE" IS '평점';
   COMMENT ON COLUMN "J20200701"."COMM"."C_DATE" IS '작성일자';
   COMMENT ON COLUMN "J20200701"."COMM"."DEL_YN" IS '삭제여부';
   COMMENT ON COLUMN "J20200701"."COMM"."M_IDX" IS '영화번호';
   COMMENT ON COLUMN "J20200701"."COMM"."STEP" IS '스탭';
   COMMENT ON COLUMN "J20200701"."COMM"."DEP" IS '깊이';
   COMMENT ON TABLE "J20200701"."COMM"  IS '댓글';
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "J20200701"."MEMBER" 
   (	"ID" VARCHAR2(30 BYTE), 
	"IDX" NUMBER(20,0), 
	"PASSWORD" VARCHAR2(30 BYTE), 
	"EMAIL" VARCHAR2(30 BYTE), 
	"NICKNAME" VARCHAR2(30 BYTE), 
	"GENDER" VARCHAR2(30 BYTE), 
	"REG_DATE" VARCHAR2(30 BYTE), 
	"DEL_YN" VARCHAR2(30 BYTE), 
	"STATUS" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "J20200701"."MEMBER"."ID" IS '회원아이디';
   COMMENT ON COLUMN "J20200701"."MEMBER"."IDX" IS '순번';
   COMMENT ON COLUMN "J20200701"."MEMBER"."PASSWORD" IS '비밀번호';
   COMMENT ON COLUMN "J20200701"."MEMBER"."EMAIL" IS '이메일';
   COMMENT ON COLUMN "J20200701"."MEMBER"."NICKNAME" IS '닉네임';
   COMMENT ON COLUMN "J20200701"."MEMBER"."GENDER" IS '성별';
   COMMENT ON COLUMN "J20200701"."MEMBER"."REG_DATE" IS '가입일';
   COMMENT ON COLUMN "J20200701"."MEMBER"."DEL_YN" IS '탈퇴여부';
   COMMENT ON COLUMN "J20200701"."MEMBER"."STATUS" IS '회원상태';
   COMMENT ON TABLE "J20200701"."MEMBER"  IS '회원 ';
--------------------------------------------------------
--  DDL for Table MOVIE_INFO
--------------------------------------------------------

  CREATE TABLE "J20200701"."MOVIE_INFO" 
   (	"M_IDX" NUMBER, 
	"M_NAME" VARCHAR2(50 BYTE), 
	"M_GENRE" VARCHAR2(20 BYTE), 
	"M_DATE" DATE, 
	"M_NATION" VARCHAR2(20 BYTE), 
	"M_TIME" NUMBER(3,0), 
	"M_RATE" VARCHAR2(20 BYTE), 
	"M_STORY" VARCHAR2(4000 BYTE), 
	"M_CAST" VARCHAR2(20 BYTE), 
	"M_DIRECTOR" VARCHAR2(20 BYTE), 
	"M_PHOTO" VARCHAR2(2000 BYTE), 
	"M_VIDEO" VARCHAR2(2000 BYTE), 
	"M_POSTER" VARCHAR2(2000 BYTE), 
	"ID" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "J20200701"."MOVIE_INFO"."M_IDX" IS '영화번호';
   COMMENT ON COLUMN "J20200701"."MOVIE_INFO"."M_NAME" IS '영화이름';
   COMMENT ON COLUMN "J20200701"."MOVIE_INFO"."M_GENRE" IS '영화장르';
   COMMENT ON COLUMN "J20200701"."MOVIE_INFO"."M_DATE" IS '영화개봉일';
   COMMENT ON COLUMN "J20200701"."MOVIE_INFO"."M_NATION" IS '영화국적';
   COMMENT ON COLUMN "J20200701"."MOVIE_INFO"."M_TIME" IS '상영시간';
   COMMENT ON COLUMN "J20200701"."MOVIE_INFO"."M_RATE" IS '등급';
   COMMENT ON COLUMN "J20200701"."MOVIE_INFO"."M_STORY" IS '줄거리';
   COMMENT ON COLUMN "J20200701"."MOVIE_INFO"."M_CAST" IS '출연진';
   COMMENT ON COLUMN "J20200701"."MOVIE_INFO"."M_DIRECTOR" IS '영화감독';
   COMMENT ON COLUMN "J20200701"."MOVIE_INFO"."M_PHOTO" IS '포토';
   COMMENT ON COLUMN "J20200701"."MOVIE_INFO"."M_VIDEO" IS '동영상';
   COMMENT ON COLUMN "J20200701"."MOVIE_INFO"."M_POSTER" IS '포스터';
   COMMENT ON COLUMN "J20200701"."MOVIE_INFO"."ID" IS '관리자아이디';
   COMMENT ON TABLE "J20200701"."MOVIE_INFO"  IS '영화정보';
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "J20200701"."REVIEW" 
   (	"P_IDX" NUMBER, 
	"P_TITLE" VARCHAR2(20 BYTE), 
	"P_CONTENT" VARCHAR2(500 BYTE), 
	"P_DATE" DATE, 
	"ID" VARCHAR2(30 BYTE), 
	"M_IDX" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "J20200701"."REVIEW"."P_IDX" IS '게시글 번호';
   COMMENT ON COLUMN "J20200701"."REVIEW"."P_TITLE" IS '제목';
   COMMENT ON COLUMN "J20200701"."REVIEW"."P_CONTENT" IS '내용';
   COMMENT ON COLUMN "J20200701"."REVIEW"."P_DATE" IS '작성일자';
   COMMENT ON COLUMN "J20200701"."REVIEW"."ID" IS '관리자아이디';
   COMMENT ON COLUMN "J20200701"."REVIEW"."M_IDX" IS '영화번호';
   COMMENT ON TABLE "J20200701"."REVIEW"  IS '리뷰게시판';
--------------------------------------------------------
--  DDL for Table SUR
--------------------------------------------------------

  CREATE TABLE "J20200701"."SUR" 
   (	"S_IDX" NUMBER, 
	"S_SUB" VARCHAR2(100 BYTE), 
	"S_SDATE" DATE, 
	"S_EDATE" DATE, 
	"S_CONTENT" VARCHAR2(2000 BYTE), 
	"S_OP1" VARCHAR2(50 BYTE), 
	"S_OP2" VARCHAR2(50 BYTE), 
	"S_OP3" VARCHAR2(50 BYTE), 
	"S_OP4" VARCHAR2(50 BYTE), 
	"S_OP5" VARCHAR2(50 BYTE), 
	"ID" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "J20200701"."SUR"."S_IDX" IS '설문번호';
   COMMENT ON COLUMN "J20200701"."SUR"."S_SUB" IS '제목';
   COMMENT ON COLUMN "J20200701"."SUR"."S_SDATE" IS '시작일';
   COMMENT ON COLUMN "J20200701"."SUR"."S_EDATE" IS '종료일';
   COMMENT ON COLUMN "J20200701"."SUR"."S_CONTENT" IS '소개글';
   COMMENT ON COLUMN "J20200701"."SUR"."S_OP1" IS '항목1';
   COMMENT ON COLUMN "J20200701"."SUR"."S_OP2" IS '항목2';
   COMMENT ON COLUMN "J20200701"."SUR"."S_OP3" IS '항목3';
   COMMENT ON COLUMN "J20200701"."SUR"."S_OP4" IS '항목4';
   COMMENT ON COLUMN "J20200701"."SUR"."S_OP5" IS '항목5';
   COMMENT ON COLUMN "J20200701"."SUR"."ID" IS '관리자아이디';
   COMMENT ON TABLE "J20200701"."SUR"  IS '설문조사 게시판';
--------------------------------------------------------
--  DDL for Table S_COMM
--------------------------------------------------------

  CREATE TABLE "J20200701"."S_COMM" 
   (	"S_IDX" NUMBER, 
	"ID" VARCHAR2(30 BYTE), 
	"R_IDX" NUMBER, 
	"R_OP" VARCHAR2(50 BYTE), 
	"R_CONTENT" VARCHAR2(4000 BYTE), 
	"R_REGDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "J20200701"."S_COMM"."S_IDX" IS '설문번호';
   COMMENT ON COLUMN "J20200701"."S_COMM"."ID" IS '회원아이디';
   COMMENT ON COLUMN "J20200701"."S_COMM"."R_IDX" IS '응답번호';
   COMMENT ON COLUMN "J20200701"."S_COMM"."R_OP" IS '투표항목';
   COMMENT ON COLUMN "J20200701"."S_COMM"."R_CONTENT" IS '내용';
   COMMENT ON COLUMN "J20200701"."S_COMM"."R_REGDATE" IS '작성일자';
   COMMENT ON TABLE "J20200701"."S_COMM"  IS '설문응답';
REM INSERTING into J20200701.BOARD
SET DEFINE OFF;
Insert into J20200701.BOARD (NUM,WRITER,SUBJECT,CONTENT,EMAIL,READCOUNT,PASSWD,REF,RE_STEP,RE_LEVEL,IP,REG_DATE) values (1,'1','1','1','test@naver.com',2,'1',1,0,0,'0:0:0:0:0:0:0:1',to_date('20/07/22','RR/MM/DD'));
REM INSERTING into J20200701.BOOK_MIND
SET DEFINE OFF;
REM INSERTING into J20200701.COMM
SET DEFINE OFF;
REM INSERTING into J20200701.MEMBER
SET DEFINE OFF;
Insert into J20200701.MEMBER (ID,IDX,PASSWORD,EMAIL,NICKNAME,GENDER,REG_DATE,DEL_YN,STATUS) values ('admin',1,'2468','email1@gmail.com','nickname2','남자','2020/07/01','N','2');
Insert into J20200701.MEMBER (ID,IDX,PASSWORD,EMAIL,NICKNAME,GENDER,REG_DATE,DEL_YN,STATUS) values ('hongil2',2,'2468','email2@gmail.com','nickname3','여자','2010/07/01','N','1');
Insert into J20200701.MEMBER (ID,IDX,PASSWORD,EMAIL,NICKNAME,GENDER,REG_DATE,DEL_YN,STATUS) values ('hongil3',3,'2468','email4@3gmail.com','nickname4','남자','2030/07/01','N','1');
Insert into J20200701.MEMBER (ID,IDX,PASSWORD,EMAIL,NICKNAME,GENDER,REG_DATE,DEL_YN,STATUS) values ('hongil4',4,'2468','email5@gmail.com','nickname6','남자','2019/07/01','N','1');
Insert into J20200701.MEMBER (ID,IDX,PASSWORD,EMAIL,NICKNAME,GENDER,REG_DATE,DEL_YN,STATUS) values ('hongil5',5,'2468','email6@gmail.com','nickname7','여자','2018/07/01','N','1');
Insert into J20200701.MEMBER (ID,IDX,PASSWORD,EMAIL,NICKNAME,GENDER,REG_DATE,DEL_YN,STATUS) values ('hongil6',6,'2468','email6@gmail.com','nickname9','남자','2021/07/01','N','3');
Insert into J20200701.MEMBER (ID,IDX,PASSWORD,EMAIL,NICKNAME,GENDER,REG_DATE,DEL_YN,STATUS) values ('hongil7',7,'2468','email8@gmail.com','nickname5','여자','2019/07/01','N','3');
Insert into J20200701.MEMBER (ID,IDX,PASSWORD,EMAIL,NICKNAME,GENDER,REG_DATE,DEL_YN,STATUS) values ('hongil8',8,'2468','email9@gmail.com','nickname54','남자','2018/07/01','N','1');
Insert into J20200701.MEMBER (ID,IDX,PASSWORD,EMAIL,NICKNAME,GENDER,REG_DATE,DEL_YN,STATUS) values ('hongil9',9,'2468','email@5gmail.com','nickname54','여자','2023/07/01','N','3');
Insert into J20200701.MEMBER (ID,IDX,PASSWORD,EMAIL,NICKNAME,GENDER,REG_DATE,DEL_YN,STATUS) values ('hongil10',10,'2468','email75@gmail.com','nickname43','여자','2020/07/01','N','1');
Insert into J20200701.MEMBER (ID,IDX,PASSWORD,EMAIL,NICKNAME,GENDER,REG_DATE,DEL_YN,STATUS) values ('hongil11',11,'2468','email@43gmail.com','nickname78','남자','2020/07/01','N','1');
REM INSERTING into J20200701.MOVIE_INFO
SET DEFINE OFF;
Insert into J20200701.MOVIE_INFO (M_IDX,M_NAME,M_GENRE,M_DATE,M_NATION,M_TIME,M_RATE,M_STORY,M_CAST,M_DIRECTOR,M_PHOTO,M_VIDEO,M_POSTER,ID) values (7,'주전장','호러',to_date('20/07/24','RR/MM/DD'),'영국',82,'12','test','나홍인, 고민국','연상호','Photo_Aladdin.jpg','https://www.youtube.com/watch?v=KrM3vS5sy8w&feature=youtu.be','Poster_Aladdin.jpg','admin');
Insert into J20200701.MOVIE_INFO (M_IDX,M_NAME,M_GENRE,M_DATE,M_NATION,M_TIME,M_RATE,M_STORY,M_CAST,M_DIRECTOR,M_PHOTO,M_VIDEO,M_POSTER,ID) values (8,'당갈','호러',to_date('20/07/24','RR/MM/DD'),'스페인',84,'19','test','나홍인, 고민국','피터 패럴리','Photo_Aladdin.jpg','https://www.youtube.com/watch?v=KrM3vS5sy9w&feature=youtu.be','Poster_Aladdin.jpg','admin');
Insert into J20200701.MOVIE_INFO (M_IDX,M_NAME,M_GENRE,M_DATE,M_NATION,M_TIME,M_RATE,M_STORY,M_CAST,M_DIRECTOR,M_PHOTO,M_VIDEO,M_POSTER,ID) values (9,'쇼생크 탈출','스릴러',to_date('20/07/24','RR/MM/DD'),'미국',86,'0','test','나홍인, 고민국','구수환','Photo_Aladdin.jpg','https://www.youtube.com/watch?v=KrM3vS5sy10w&feature=youtu.be','Poster_Aladdin.jpg','admin');
Insert into J20200701.MOVIE_INFO (M_IDX,M_NAME,M_GENRE,M_DATE,M_NATION,M_TIME,M_RATE,M_STORY,M_CAST,M_DIRECTOR,M_PHOTO,M_VIDEO,M_POSTER,ID) values (10,'터미네이터 2:오리지널','액션',to_date('20/07/24','RR/MM/DD'),'독일',88,'0','test','나홍인, 고민국','나딘 라바키','Photo_Aladdin.jpg','https://www.youtube.com/watch?v=KrM3vS5sy11w&feature=youtu.be','Poster_Aladdin.jpg','admin');
Insert into J20200701.MOVIE_INFO (M_IDX,M_NAME,M_GENRE,M_DATE,M_NATION,M_TIME,M_RATE,M_STORY,M_CAST,M_DIRECTOR,M_PHOTO,M_VIDEO,M_POSTER,ID) values (11,'보헤미안 랩소디','호러',to_date('20/07/24','RR/MM/DD'),'기타',90,'12','test','나홍인, 고민국','댄 스캔론','Photo_Aladdin.jpg','https://www.youtube.com/watch?v=KrM3vS5sy12w&feature=youtu.be','Poster_Aladdin.jpg','admin');
Insert into J20200701.MOVIE_INFO (M_IDX,M_NAME,M_GENRE,M_DATE,M_NATION,M_TIME,M_RATE,M_STORY,M_CAST,M_DIRECTOR,M_PHOTO,M_VIDEO,M_POSTER,ID) values (12,'덕구','드라마',to_date('20/07/24','RR/MM/DD'),'한국',92,'12','test','나홍인, 고민국','피터 패럴리','Photo_Aladdin.jpg','https://www.youtube.com/watch?v=KrM3vS5sy13w&feature=youtu.be','Poster_Aladdin.jpg','admin');
Insert into J20200701.MOVIE_INFO (M_IDX,M_NAME,M_GENRE,M_DATE,M_NATION,M_TIME,M_RATE,M_STORY,M_CAST,M_DIRECTOR,M_PHOTO,M_VIDEO,M_POSTER,ID) values (13,'월-E','스릴러',to_date('20/07/24','RR/MM/DD'),'프랑스',94,'19','test','나홍인, 고민국','제임스 맨골드','Photo_Aladdin.jpg','https://www.youtube.com/watch?v=KrM3vS5sy14w&feature=youtu.be','Poster_Aladdin.jpg','admin');
Insert into J20200701.MOVIE_INFO (M_IDX,M_NAME,M_GENRE,M_DATE,M_NATION,M_TIME,M_RATE,M_STORY,M_CAST,M_DIRECTOR,M_PHOTO,M_VIDEO,M_POSTER,ID) values (14,'나 홀로 집에','로맨스',to_date('20/07/24','RR/MM/DD'),'중국',96,'12','test','나홍인, 고민국','로칸 피네건','Photo_Aladdin.jpg','https://www.youtube.com/watch?v=KrM3vS5sy15w&feature=youtu.be','Poster_Aladdin.jpg','admin');
Insert into J20200701.MOVIE_INFO (M_IDX,M_NAME,M_GENRE,M_DATE,M_NATION,M_TIME,M_RATE,M_STORY,M_CAST,M_DIRECTOR,M_PHOTO,M_VIDEO,M_POSTER,ID) values (15,'라이언 일병 구하기','로맨스',to_date('20/07/24','RR/MM/DD'),'일본',98,'12','test','나홍인, 고민국','피터 패럴리','Photo_Aladdin.jpg','https://www.youtube.com/watch?v=KrM3vS5sy16w&feature=youtu.be','Poster_Aladdin.jpg','admin');
Insert into J20200701.MOVIE_INFO (M_IDX,M_NAME,M_GENRE,M_DATE,M_NATION,M_TIME,M_RATE,M_STORY,M_CAST,M_DIRECTOR,M_PHOTO,M_VIDEO,M_POSTER,ID) values (16,'아이즈 온 미 : 더 무비','로맨스',to_date('20/07/24','RR/MM/DD'),'인도',100,'12','test','나홍인, 고민국','연상호','Photo_Aladdin.jpg','https://www.youtube.com/watch?v=KrM3vS5sy17w&feature=youtu.be','Poster_Aladdin.jpg','admin');
Insert into J20200701.MOVIE_INFO (M_IDX,M_NAME,M_GENRE,M_DATE,M_NATION,M_TIME,M_RATE,M_STORY,M_CAST,M_DIRECTOR,M_PHOTO,M_VIDEO,M_POSTER,ID) values (17,'살인의 추억','스릴러',to_date('20/07/24','RR/MM/DD'),'이탈리아',102,'12','test','나홍인, 고민국','댄 스캔론','Photo_Aladdin.jpg','https://www.youtube.com/watch?v=KrM3vS5sy18w&feature=youtu.be','Poster_Aladdin.jpg','admin');
Insert into J20200701.MOVIE_INFO (M_IDX,M_NAME,M_GENRE,M_DATE,M_NATION,M_TIME,M_RATE,M_STORY,M_CAST,M_DIRECTOR,M_PHOTO,M_VIDEO,M_POSTER,ID) values (18,'빽 투 더 퓨쳐','스릴러',to_date('20/07/24','RR/MM/DD'),'영국',104,'12','test','나홍인, 고민국','강태광','Photo_Aladdin.jpg','https://www.youtube.com/watch?v=KrM3vS5sy19w&feature=youtu.be','Poster_Aladdin.jpg','admin');
Insert into J20200701.MOVIE_INFO (M_IDX,M_NAME,M_GENRE,M_DATE,M_NATION,M_TIME,M_RATE,M_STORY,M_CAST,M_DIRECTOR,M_PHOTO,M_VIDEO,M_POSTER,ID) values (19,'사운드 오브 뮤직','드라마',to_date('20/07/24','RR/MM/DD'),'스페인',106,'12','test','나홍인, 고민국','구수환','Photo_Aladdin.jpg','https://www.youtube.com/watch?v=KrM3vS5sy20w&feature=youtu.be','Poster_Aladdin.jpg','admin');
Insert into J20200701.MOVIE_INFO (M_IDX,M_NAME,M_GENRE,M_DATE,M_NATION,M_TIME,M_RATE,M_STORY,M_CAST,M_DIRECTOR,M_PHOTO,M_VIDEO,M_POSTER,ID) values (20,'매트릭스','액션',to_date('20/07/24','RR/MM/DD'),'미국',108,'12','test','나홍인, 고민국','제임스 맨골드','Photo_Aladdin.jpg','https://www.youtube.com/watch?v=KrM3vS5sy21w&feature=youtu.be','Poster_Aladdin.jpg','admin');
Insert into J20200701.MOVIE_INFO (M_IDX,M_NAME,M_GENRE,M_DATE,M_NATION,M_TIME,M_RATE,M_STORY,M_CAST,M_DIRECTOR,M_PHOTO,M_VIDEO,M_POSTER,ID) values (21,'인생은 아름다워','로맨스',to_date('20/07/24','RR/MM/DD'),'독일',110,'12','test','나홍인, 고민국','로칸 피네건','Photo_Aladdin.jpg','https://www.youtube.com/watch?v=KrM3vS5sy22w&feature=youtu.be','Poster_Aladdin.jpg','admin');
Insert into J20200701.MOVIE_INFO (M_IDX,M_NAME,M_GENRE,M_DATE,M_NATION,M_TIME,M_RATE,M_STORY,M_CAST,M_DIRECTOR,M_PHOTO,M_VIDEO,M_POSTER,ID) values (22,'헬프','다큐',to_date('20/07/24','RR/MM/DD'),'기타',112,'0','test','나홍인, 고민국','피터 패럴리','Photo_Aladdin.jpg','https://www.youtube.com/watch?v=KrM3vS5sy23w&feature=youtu.be','Poster_Aladdin.jpg','admin');
Insert into J20200701.MOVIE_INFO (M_IDX,M_NAME,M_GENRE,M_DATE,M_NATION,M_TIME,M_RATE,M_STORY,M_CAST,M_DIRECTOR,M_PHOTO,M_VIDEO,M_POSTER,ID) values (23,'포레스트 검프','드라마',to_date('20/07/24','RR/MM/DD'),'한국',114,'15','test','나홍인, 고민국','증국상','Photo_Aladdin.jpg','https://www.youtube.com/watch?v=KrM3vS5sy24w&feature=youtu.be','Poster_Aladdin.jpg','admin');
Insert into J20200701.MOVIE_INFO (M_IDX,M_NAME,M_GENRE,M_DATE,M_NATION,M_TIME,M_RATE,M_STORY,M_CAST,M_DIRECTOR,M_PHOTO,M_VIDEO,M_POSTER,ID) values (24,'위대한 쇼맨','액션',to_date('20/07/24','RR/MM/DD'),'프랑스',116,'15','test','나홍인, 고민국','구수환','Photo_Aladdin.jpg','https://www.youtube.com/watch?v=KrM3vS5sy25w&feature=youtu.be','Poster_Aladdin.jpg','admin');
Insert into J20200701.MOVIE_INFO (M_IDX,M_NAME,M_GENRE,M_DATE,M_NATION,M_TIME,M_RATE,M_STORY,M_CAST,M_DIRECTOR,M_PHOTO,M_VIDEO,M_POSTER,ID) values (25,'클래식','호러',to_date('20/07/24','RR/MM/DD'),'중국',118,'15','test','나홍인, 고민국','브라이언 싱어','Photo_Aladdin.jpg','https://www.youtube.com/watch?v=KrM3vS5sy26w&feature=youtu.be','Poster_Aladdin.jpg','admin');
Insert into J20200701.MOVIE_INFO (M_IDX,M_NAME,M_GENRE,M_DATE,M_NATION,M_TIME,M_RATE,M_STORY,M_CAST,M_DIRECTOR,M_PHOTO,M_VIDEO,M_POSTER,ID) values (26,'글래디에이터','드라마',to_date('20/07/24','RR/MM/DD'),'일본',120,'15','test','나홍인, 고민국','연상호','Photo_Aladdin.jpg','https://www.youtube.com/watch?v=KrM3vS5sy27w&feature=youtu.be','Poster_Aladdin.jpg','admin');
Insert into J20200701.MOVIE_INFO (M_IDX,M_NAME,M_GENRE,M_DATE,M_NATION,M_TIME,M_RATE,M_STORY,M_CAST,M_DIRECTOR,M_PHOTO,M_VIDEO,M_POSTER,ID) values (27,'센과 치히로의 행방불명','호러',to_date('20/07/24','RR/MM/DD'),'인도',122,'15','test','나홍인, 고민국','브라이언 싱어','Photo_Aladdin.jpg','https://www.youtube.com/watch?v=KrM3vS5sy28w&feature=youtu.be','Poster_Aladdin.jpg','admin');
Insert into J20200701.MOVIE_INFO (M_IDX,M_NAME,M_GENRE,M_DATE,M_NATION,M_TIME,M_RATE,M_STORY,M_CAST,M_DIRECTOR,M_PHOTO,M_VIDEO,M_POSTER,ID) values (28,'토이 스토리 3','액션',to_date('20/07/24','RR/MM/DD'),'이탈리아',124,'19','test','나홍인, 고민국','연상호','Photo_Aladdin.jpg','https://www.youtube.com/watch?v=KrM3vS5sy29w&feature=youtu.be','Poster_Aladdin.jpg','admin');
Insert into J20200701.MOVIE_INFO (M_IDX,M_NAME,M_GENRE,M_DATE,M_NATION,M_TIME,M_RATE,M_STORY,M_CAST,M_DIRECTOR,M_PHOTO,M_VIDEO,M_POSTER,ID) values (29,'타이타닉','드라마',to_date('20/07/24','RR/MM/DD'),'영국',126,'19','test','나홍인, 고민국','증국상','Photo_Aladdin.jpg','https://www.youtube.com/watch?v=KrM3vS5sy30w&feature=youtu.be','Poster_Aladdin.jpg','admin');
Insert into J20200701.MOVIE_INFO (M_IDX,M_NAME,M_GENRE,M_DATE,M_NATION,M_TIME,M_RATE,M_STORY,M_CAST,M_DIRECTOR,M_PHOTO,M_VIDEO,M_POSTER,ID) values (30,'알라딘','호러',to_date('20/07/24','RR/MM/DD'),'스페인',128,'19','test','나홍인, 고민국','브라이언 싱어','Photo_Aladdin.jpg','https://www.youtube.com/watch?v=KrM3vS5sy31w&feature=youtu.be','Poster_Aladdin.jpg','admin');
Insert into J20200701.MOVIE_INFO (M_IDX,M_NAME,M_GENRE,M_DATE,M_NATION,M_TIME,M_RATE,M_STORY,M_CAST,M_DIRECTOR,M_PHOTO,M_VIDEO,M_POSTER,ID) values (1,'그린북','드라마',to_date('20/07/24','RR/MM/DD'),'한국',70,'0','test','나홍인, 고민국','댄 스캔론','Photo_Aladdin.jpg','https://www.youtube.com/watch?v=KrM3vS5sy2w&feature=youtu.be','Poster_Aladdin.jpg','admin');
Insert into J20200701.MOVIE_INFO (M_IDX,M_NAME,M_GENRE,M_DATE,M_NATION,M_TIME,M_RATE,M_STORY,M_CAST,M_DIRECTOR,M_PHOTO,M_VIDEO,M_POSTER,ID) values (2,'가버나움','액션',to_date('20/07/24','RR/MM/DD'),'프랑스',72,'12','test','나홍인, 고민국','피터 패럴리','Photo_Aladdin.jpg','https://www.youtube.com/watch?v=KrM3vS5sy3w&feature=youtu.be','Poster_Aladdin.jpg','admin');
Insert into J20200701.MOVIE_INFO (M_IDX,M_NAME,M_GENRE,M_DATE,M_NATION,M_TIME,M_RATE,M_STORY,M_CAST,M_DIRECTOR,M_PHOTO,M_VIDEO,M_POSTER,ID) values (3,'베일리 어게인','액션',to_date('20/07/24','RR/MM/DD'),'중국',74,'0','test','나홍인, 고민국','증국상','Photo_Aladdin.jpg','https://www.youtube.com/watch?v=KrM3vS5sy4w&feature=youtu.be','Poster_Aladdin.jpg','admin');
Insert into J20200701.MOVIE_INFO (M_IDX,M_NAME,M_GENRE,M_DATE,M_NATION,M_TIME,M_RATE,M_STORY,M_CAST,M_DIRECTOR,M_PHOTO,M_VIDEO,M_POSTER,ID) values (4,'원더','드라마',to_date('20/07/24','RR/MM/DD'),'일본',76,'0','test','나홍인, 고민국','구수환','Photo_Aladdin.jpg','https://www.youtube.com/watch?v=KrM3vS5sy5w&feature=youtu.be','Poster_Aladdin.jpg','admin');
Insert into J20200701.MOVIE_INFO (M_IDX,M_NAME,M_GENRE,M_DATE,M_NATION,M_TIME,M_RATE,M_STORY,M_CAST,M_DIRECTOR,M_PHOTO,M_VIDEO,M_POSTER,ID) values (5,'포드 V 페라리','스릴러',to_date('20/07/24','RR/MM/DD'),'인도',78,'0','test','나홍인, 고민국','나딘 라바키','Photo_Aladdin.jpg','https://www.youtube.com/watch?v=KrM3vS5sy6w&feature=youtu.be','Poster_Aladdin.jpg','admin');
Insert into J20200701.MOVIE_INFO (M_IDX,M_NAME,M_GENRE,M_DATE,M_NATION,M_TIME,M_RATE,M_STORY,M_CAST,M_DIRECTOR,M_PHOTO,M_VIDEO,M_POSTER,ID) values (6,'아일라','액션',to_date('20/07/24','RR/MM/DD'),'이탈리아',80,'0','test','나홍인, 고민국','댄 스캔론','Photo_Aladdin.jpg','https://www.youtube.com/watch?v=KrM3vS5sy7w&feature=youtu.be','Poster_Aladdin.jpg','admin');
REM INSERTING into J20200701.REVIEW
SET DEFINE OFF;
REM INSERTING into J20200701.SUR
SET DEFINE OFF;
Insert into J20200701.SUR (S_IDX,S_SUB,S_SDATE,S_EDATE,S_CONTENT,S_OP1,S_OP2,S_OP3,S_OP4,S_OP5,ID) values (1,'토르 대 아이언맨',to_date('20/07/24','RR/MM/DD'),to_date('20/08/25','RR/MM/DD'),'토르 대 아이언맨 누가 더 셀가요','토르','아이언맨',null,null,null,'admin');
Insert into J20200701.SUR (S_IDX,S_SUB,S_SDATE,S_EDATE,S_CONTENT,S_OP1,S_OP2,S_OP3,S_OP4,S_OP5,ID) values (2,'헐크 대 아이언맨',to_date('20/07/01','RR/MM/DD'),to_date('20/07/10','RR/MM/DD'),'헐크가 센가요 아이언맨이 센가요','헐크','아이언맨',null,null,null,'admin');
Insert into J20200701.SUR (S_IDX,S_SUB,S_SDATE,S_EDATE,S_CONTENT,S_OP1,S_OP2,S_OP3,S_OP4,S_OP5,ID) values (3,'아이언맨 대 로키',to_date('20/07/02','RR/MM/DD'),to_date('20/07/11','RR/MM/DD'),'로키도 센가요?','로키','아이언맨',null,null,null,'admin');
Insert into J20200701.SUR (S_IDX,S_SUB,S_SDATE,S_EDATE,S_CONTENT,S_OP1,S_OP2,S_OP3,S_OP4,S_OP5,ID) values (4,'로키 대 토르',to_date('20/07/03','RR/MM/DD'),to_date('20/07/12','RR/MM/DD'),'토르가 봐주지 않을까요?','로키','토르',null,null,null,'admin');
Insert into J20200701.SUR (S_IDX,S_SUB,S_SDATE,S_EDATE,S_CONTENT,S_OP1,S_OP2,S_OP3,S_OP4,S_OP5,ID) values (5,'오딘 대 토르',to_date('20/07/04','RR/MM/DD'),to_date('20/07/13','RR/MM/DD'),'오딘이 그래도 토르는 이기겠죠?','오딘','토르',null,null,null,'admin');
Insert into J20200701.SUR (S_IDX,S_SUB,S_SDATE,S_EDATE,S_CONTENT,S_OP1,S_OP2,S_OP3,S_OP4,S_OP5,ID) values (6,'타노스 대 오딘',to_date('20/07/05','RR/MM/DD'),to_date('20/07/14','RR/MM/DD'),'오딘이랑 타노스랑 싸우는 거 안나왔죠?','타노스','오딘',null,null,null,'admin');
Insert into J20200701.SUR (S_IDX,S_SUB,S_SDATE,S_EDATE,S_CONTENT,S_OP1,S_OP2,S_OP3,S_OP4,S_OP5,ID) values (7,'호크아이 대 블랙위도우',to_date('20/07/06','RR/MM/DD'),to_date('20/07/15','RR/MM/DD'),'인간계의 싸움','호크아이','블랙위도우',null,null,null,'admin');
Insert into J20200701.SUR (S_IDX,S_SUB,S_SDATE,S_EDATE,S_CONTENT,S_OP1,S_OP2,S_OP3,S_OP4,S_OP5,ID) values (8,'배트맨 대 슈퍼맨',to_date('20/07/07','RR/MM/DD'),to_date('20/07/16','RR/MM/DD'),'궁금해서 영화도 나왔어요','배트맨','슈퍼맨',null,null,null,'admin');
Insert into J20200701.SUR (S_IDX,S_SUB,S_SDATE,S_EDATE,S_CONTENT,S_OP1,S_OP2,S_OP3,S_OP4,S_OP5,ID) values (9,'스파이더맨 대 맨스파이더',to_date('20/07/08','RR/MM/DD'),to_date('20/07/17','RR/MM/DD'),'맨스파이더는 누구야?','스파이더맨','맨스파이더',null,null,null,'admin');
Insert into J20200701.SUR (S_IDX,S_SUB,S_SDATE,S_EDATE,S_CONTENT,S_OP1,S_OP2,S_OP3,S_OP4,S_OP5,ID) values (10,'영화보기 제일 좋은 계절은?',to_date('20/07/09','RR/MM/DD'),to_date('20/07/18','RR/MM/DD'),'봄여름가을겨울 언제 영화 보세요?','봄','여름','가을','겨울',null,'admin');
REM INSERTING into J20200701.S_COMM
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index PK_MOVIE_INFO
--------------------------------------------------------

  CREATE UNIQUE INDEX "J20200701"."PK_MOVIE_INFO" ON "J20200701"."MOVIE_INFO" ("M_IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_MEMBER
--------------------------------------------------------

  CREATE UNIQUE INDEX "J20200701"."PK_MEMBER" ON "J20200701"."MEMBER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_SUR
--------------------------------------------------------

  CREATE UNIQUE INDEX "J20200701"."PK_SUR" ON "J20200701"."SUR" ("S_IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_S_COMM
--------------------------------------------------------

  CREATE UNIQUE INDEX "J20200701"."PK_S_COMM" ON "J20200701"."S_COMM" ("S_IDX", "ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_BOOK_MIND
--------------------------------------------------------

  CREATE UNIQUE INDEX "J20200701"."PK_BOOK_MIND" ON "J20200701"."BOOK_MIND" ("ID", "M_IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_COMM
--------------------------------------------------------

  CREATE UNIQUE INDEX "J20200701"."PK_COMM" ON "J20200701"."COMM" ("C_IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_REVIEW
--------------------------------------------------------

  CREATE UNIQUE INDEX "J20200701"."PK_REVIEW" ON "J20200701"."REVIEW" ("P_IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table MOVIE_INFO
--------------------------------------------------------

  ALTER TABLE "J20200701"."MOVIE_INFO" ADD CONSTRAINT "PK_MOVIE_INFO" PRIMARY KEY ("M_IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "J20200701"."MOVIE_INFO" MODIFY ("M_POSTER" NOT NULL ENABLE);
  ALTER TABLE "J20200701"."MOVIE_INFO" MODIFY ("M_TIME" NOT NULL ENABLE);
  ALTER TABLE "J20200701"."MOVIE_INFO" MODIFY ("M_NAME" NOT NULL ENABLE);
  ALTER TABLE "J20200701"."MOVIE_INFO" MODIFY ("M_IDX" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOOK_MIND
--------------------------------------------------------

  ALTER TABLE "J20200701"."BOOK_MIND" ADD CONSTRAINT "PK_BOOK_MIND" PRIMARY KEY ("ID", "M_IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "J20200701"."BOOK_MIND" MODIFY ("IDX" NOT NULL ENABLE);
  ALTER TABLE "J20200701"."BOOK_MIND" MODIFY ("M_IDX" NOT NULL ENABLE);
  ALTER TABLE "J20200701"."BOOK_MIND" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table S_COMM
--------------------------------------------------------

  ALTER TABLE "J20200701"."S_COMM" ADD CONSTRAINT "PK_S_COMM" PRIMARY KEY ("S_IDX", "ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "J20200701"."S_COMM" MODIFY ("R_IDX" NOT NULL ENABLE);
  ALTER TABLE "J20200701"."S_COMM" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "J20200701"."S_COMM" MODIFY ("S_IDX" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SUR
--------------------------------------------------------

  ALTER TABLE "J20200701"."SUR" ADD CONSTRAINT "PK_SUR" PRIMARY KEY ("S_IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "J20200701"."SUR" MODIFY ("S_IDX" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMM
--------------------------------------------------------

  ALTER TABLE "J20200701"."COMM" ADD CONSTRAINT "PK_COMM" PRIMARY KEY ("C_IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "J20200701"."COMM" MODIFY ("C_IDX" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "J20200701"."MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "J20200701"."MEMBER" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "J20200701"."REVIEW" ADD CONSTRAINT "PK_REVIEW" PRIMARY KEY ("P_IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "J20200701"."REVIEW" MODIFY ("P_IDX" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table SUR
--------------------------------------------------------

  ALTER TABLE "J20200701"."SUR" ADD CONSTRAINT "FK_MEMBER_TO_SUR" FOREIGN KEY ("ID")
	  REFERENCES "J20200701"."MEMBER" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table S_COMM
--------------------------------------------------------

  ALTER TABLE "J20200701"."S_COMM" ADD CONSTRAINT "FK_MEMBER_TO_S_COMM" FOREIGN KEY ("ID")
	  REFERENCES "J20200701"."MEMBER" ("ID") ENABLE;
  ALTER TABLE "J20200701"."S_COMM" ADD CONSTRAINT "FK_SUR_TO_S_COMM" FOREIGN KEY ("S_IDX")
	  REFERENCES "J20200701"."SUR" ("S_IDX") ENABLE;
