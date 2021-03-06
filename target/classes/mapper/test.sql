--------------------------------------------------------
--  파일이 생성됨 - 목요일-3월-17-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_TB_BOARD_IDX
--------------------------------------------------------

   CREATE SEQUENCE  "HSB"."SEQ_TB_BOARD_IDX"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 523 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_TB_FILE_IDX
--------------------------------------------------------

   CREATE SEQUENCE  "HSB"."SEQ_TB_FILE_IDX"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 14 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table TB_BOARD
--------------------------------------------------------

  CREATE TABLE "HSB"."TB_BOARD" 
   (	"IDX" NUMBER, 
	"PARENT_IDX" NUMBER, 
	"TITLE" VARCHAR2(100 BYTE), 
	"CONTENTS" VARCHAR2(4000 BYTE), 
	"HIT_CNT" NUMBER, 
	"DEL_GB" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"CREA_DTM" DATE DEFAULT SYSDATE, 
	"CREA_ID" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "HSB"."TB_BOARD"."IDX" IS '인덱스';
   COMMENT ON COLUMN "HSB"."TB_BOARD"."PARENT_IDX" IS '부모글 인덱스';
   COMMENT ON COLUMN "HSB"."TB_BOARD"."TITLE" IS '제목';
   COMMENT ON COLUMN "HSB"."TB_BOARD"."CONTENTS" IS '내용';
   COMMENT ON COLUMN "HSB"."TB_BOARD"."HIT_CNT" IS '조회수';
   COMMENT ON COLUMN "HSB"."TB_BOARD"."DEL_GB" IS '삭제구분';
   COMMENT ON COLUMN "HSB"."TB_BOARD"."CREA_DTM" IS '생성일자';
   COMMENT ON COLUMN "HSB"."TB_BOARD"."CREA_ID" IS '생성자 ID';
   COMMENT ON TABLE "HSB"."TB_BOARD"  IS '게시판';
--------------------------------------------------------
--  DDL for Table TB_FILE
--------------------------------------------------------

  CREATE TABLE "HSB"."TB_FILE" 
   (	"IDX" NUMBER, 
	"BOARD_IDX" NUMBER, 
	"ORIGINAL_FILE_NAME" VARCHAR2(260 BYTE), 
	"STORED_FILE_NAME" VARCHAR2(40 BYTE), 
	"FILE_SIZE" NUMBER, 
	"CREA_DTM" DATE DEFAULT SYSDATE, 
	"CREA_ID" VARCHAR2(30 BYTE), 
	"DEL_GB" VARCHAR2(1 BYTE) DEFAULT 'N'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into HSB.TB_BOARD
SET DEFINE OFF;
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (1,null,'제목','내용',0,'N',to_date('16/03/16','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (2,null,'게시판 제목2','게시판 내용2',14,'Y',to_date('16/03/16','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (3,null,'새로운 글','입니다.',0,'N',to_date('16/03/16','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (4,null,'파일 올리기','테스트',0,'N',to_date('16/03/16','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (5,null,'단일 파일 올리기','단일 테스트',1,'N',to_date('16/03/16','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (7,null,'단일 파일 올리기 테스트','테스트',1,'N',to_date('16/03/16','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (8,null,'길이 확인','확인',0,'N',to_date('16/03/16','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (9,null,'길이 확인','테스트',1,'N',to_date('16/03/16','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (10,null,'단일 파일 업로드 테스트','테스트',7,'N',to_date('16/03/16','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (11,null,'다중 파일 업로드 테스트','다중 파일 업로드 테스트',11,'N',to_date('16/03/16','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (12,null,'게시글','게시글 확인',5,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (13,null,'페이징 테스트','확인중',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (14,null,'페이징 테스트','확인중',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (15,null,'페이징 테스트','확인중',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (16,null,'페이징 테스트','확인중',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (17,null,'페이징 테스트','확인중',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (18,null,'페이징 테스트','확인중',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (19,null,'페이징 테스트','확인중',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (20,null,'페이징 테스트','확인중',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (21,null,'페이징 테스트','확인중',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (22,null,'페이징 테스트','확인중',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (23,null,'제목 1','내용 1',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (24,null,'제목 2','내용 2',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (25,null,'제목 3','내용 3',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (26,null,'제목 4','내용 4',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (27,null,'제목 5','내용 5',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (28,null,'제목 6','내용 6',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (29,null,'제목 7','내용 7',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (30,null,'제목 8','내용 8',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (31,null,'제목 9','내용 9',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (32,null,'제목 10','내용 10',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (33,null,'제목 11','내용 11',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (34,null,'제목 12','내용 12',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (35,null,'제목 13','내용 13',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (36,null,'제목 14','내용 14',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (37,null,'제목 15','내용 15',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (38,null,'제목 16','내용 16',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (39,null,'제목 17','내용 17',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (40,null,'제목 18','내용 18',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (41,null,'제목 19','내용 19',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (42,null,'제목 20','내용 20',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (43,null,'제목 21','내용 21',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (44,null,'제목 22','내용 22',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (45,null,'제목 23','내용 23',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (46,null,'제목 24','내용 24',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (47,null,'제목 25','내용 25',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (48,null,'제목 26','내용 26',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (49,null,'제목 27','내용 27',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (50,null,'제목 28','내용 28',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (51,null,'제목 29','내용 29',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (52,null,'제목 30','내용 30',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (53,null,'제목 31','내용 31',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (54,null,'제목 32','내용 32',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (55,null,'제목 33','내용 33',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (56,null,'제목 34','내용 34',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (57,null,'제목 35','내용 35',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (58,null,'제목 36','내용 36',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (59,null,'제목 37','내용 37',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (60,null,'제목 38','내용 38',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (61,null,'제목 39','내용 39',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (62,null,'제목 40','내용 40',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (63,null,'제목 41','내용 41',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (64,null,'제목 42','내용 42',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (65,null,'제목 43','내용 43',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (66,null,'제목 44','내용 44',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (67,null,'제목 45','내용 45',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (68,null,'제목 46','내용 46',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (69,null,'제목 47','내용 47',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (70,null,'제목 48','내용 48',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (71,null,'제목 49','내용 49',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (72,null,'제목 50','내용 50',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (73,null,'제목 51','내용 51',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (74,null,'제목 52','내용 52',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (75,null,'제목 53','내용 53',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (76,null,'제목 54','내용 54',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (77,null,'제목 55','내용 55',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (78,null,'제목 56','내용 56',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (79,null,'제목 57','내용 57',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (80,null,'제목 58','내용 58',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (81,null,'제목 59','내용 59',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (82,null,'제목 60','내용 60',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (83,null,'제목 61','내용 61',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (84,null,'제목 62','내용 62',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (85,null,'제목 63','내용 63',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (86,null,'제목 64','내용 64',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (87,null,'제목 65','내용 65',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (88,null,'제목 66','내용 66',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (89,null,'제목 67','내용 67',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (90,null,'제목 68','내용 68',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (91,null,'제목 69','내용 69',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (92,null,'제목 70','내용 70',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (93,null,'제목 71','내용 71',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (94,null,'제목 72','내용 72',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (95,null,'제목 73','내용 73',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (96,null,'제목 74','내용 74',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (97,null,'제목 75','내용 75',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (98,null,'제목 76','내용 76',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (99,null,'제목 77','내용 77',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (100,null,'제목 78','내용 78',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (101,null,'제목 79','내용 79',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (102,null,'제목 80','내용 80',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (103,null,'제목 81','내용 81',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (104,null,'제목 82','내용 82',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (105,null,'제목 83','내용 83',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (106,null,'제목 84','내용 84',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (107,null,'제목 85','내용 85',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (108,null,'제목 86','내용 86',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (109,null,'제목 87','내용 87',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (110,null,'제목 88','내용 88',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (111,null,'제목 89','내용 89',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (112,null,'제목 90','내용 90',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (113,null,'제목 91','내용 91',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (114,null,'제목 92','내용 92',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (115,null,'제목 93','내용 93',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (116,null,'제목 94','내용 94',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (117,null,'제목 95','내용 95',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (118,null,'제목 96','내용 96',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (119,null,'제목 97','내용 97',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (120,null,'제목 98','내용 98',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (121,null,'제목 99','내용 99',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (122,null,'제목 100','내용 100',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (123,null,'제목 101','내용 101',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (124,null,'제목 102','내용 102',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (125,null,'제목 103','내용 103',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (126,null,'제목 104','내용 104',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (127,null,'제목 105','내용 105',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (128,null,'제목 106','내용 106',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (129,null,'제목 107','내용 107',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (130,null,'제목 108','내용 108',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (131,null,'제목 109','내용 109',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (132,null,'제목 110','내용 110',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (133,null,'제목 111','내용 111',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (134,null,'제목 112','내용 112',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (135,null,'제목 113','내용 113',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (136,null,'제목 114','내용 114',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (137,null,'제목 115','내용 115',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (138,null,'제목 116','내용 116',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (139,null,'제목 117','내용 117',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (140,null,'제목 118','내용 118',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (141,null,'제목 119','내용 119',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (142,null,'제목 120','내용 120',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (143,null,'제목 121','내용 121',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (144,null,'제목 122','내용 122',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (145,null,'제목 123','내용 123',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (146,null,'제목 124','내용 124',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (147,null,'제목 125','내용 125',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (148,null,'제목 126','내용 126',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (149,null,'제목 127','내용 127',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (150,null,'제목 128','내용 128',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (151,null,'제목 129','내용 129',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (152,null,'제목 130','내용 130',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (153,null,'제목 131','내용 131',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (154,null,'제목 132','내용 132',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (155,null,'제목 133','내용 133',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (156,null,'제목 134','내용 134',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (157,null,'제목 135','내용 135',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (158,null,'제목 136','내용 136',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (159,null,'제목 137','내용 137',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (160,null,'제목 138','내용 138',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (161,null,'제목 139','내용 139',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (162,null,'제목 140','내용 140',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (163,null,'제목 141','내용 141',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (164,null,'제목 142','내용 142',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (165,null,'제목 143','내용 143',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (166,null,'제목 144','내용 144',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (167,null,'제목 145','내용 145',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (168,null,'제목 146','내용 146',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (169,null,'제목 147','내용 147',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (170,null,'제목 148','내용 148',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (171,null,'제목 149','내용 149',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (172,null,'제목 150','내용 150',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (173,null,'제목 151','내용 151',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (174,null,'제목 152','내용 152',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (175,null,'제목 153','내용 153',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (176,null,'제목 154','내용 154',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (177,null,'제목 155','내용 155',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (178,null,'제목 156','내용 156',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (179,null,'제목 157','내용 157',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (180,null,'제목 158','내용 158',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (181,null,'제목 159','내용 159',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (182,null,'제목 160','내용 160',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (183,null,'제목 161','내용 161',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (184,null,'제목 162','내용 162',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (185,null,'제목 163','내용 163',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (186,null,'제목 164','내용 164',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (187,null,'제목 165','내용 165',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (188,null,'제목 166','내용 166',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (189,null,'제목 167','내용 167',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (190,null,'제목 168','내용 168',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (191,null,'제목 169','내용 169',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (192,null,'제목 170','내용 170',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (193,null,'제목 171','내용 171',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (194,null,'제목 172','내용 172',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (195,null,'제목 173','내용 173',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (196,null,'제목 174','내용 174',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (197,null,'제목 175','내용 175',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (198,null,'제목 176','내용 176',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (199,null,'제목 177','내용 177',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (200,null,'제목 178','내용 178',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (201,null,'제목 179','내용 179',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (202,null,'제목 180','내용 180',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (203,null,'제목 181','내용 181',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (204,null,'제목 182','내용 182',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (205,null,'제목 183','내용 183',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (206,null,'제목 184','내용 184',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (207,null,'제목 185','내용 185',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (208,null,'제목 186','내용 186',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (209,null,'제목 187','내용 187',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (210,null,'제목 188','내용 188',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (211,null,'제목 189','내용 189',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (212,null,'제목 190','내용 190',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (213,null,'제목 191','내용 191',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (214,null,'제목 192','내용 192',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (215,null,'제목 193','내용 193',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (216,null,'제목 194','내용 194',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (217,null,'제목 195','내용 195',1,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (218,null,'제목 196','내용 196',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (219,null,'제목 197','내용 197',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (220,null,'제목 198','내용 198',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (221,null,'제목 199','내용 199',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (222,null,'제목 200','내용 200',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (223,null,'제목 201','내용 201',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (224,null,'제목 202','내용 202',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (225,null,'제목 203','내용 203',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (226,null,'제목 204','내용 204',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (227,null,'제목 205','내용 205',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (228,null,'제목 206','내용 206',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (229,null,'제목 207','내용 207',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (230,null,'제목 208','내용 208',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (231,null,'제목 209','내용 209',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (232,null,'제목 210','내용 210',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (233,null,'제목 211','내용 211',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (234,null,'제목 212','내용 212',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (235,null,'제목 213','내용 213',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (236,null,'제목 214','내용 214',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (237,null,'제목 215','내용 215',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (238,null,'제목 216','내용 216',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (239,null,'제목 217','내용 217',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (240,null,'제목 218','내용 218',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (241,null,'제목 219','내용 219',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (242,null,'제목 220','내용 220',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (243,null,'제목 221','내용 221',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (244,null,'제목 222','내용 222',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (245,null,'제목 223','내용 223',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (246,null,'제목 224','내용 224',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (247,null,'제목 225','내용 225',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (248,null,'제목 226','내용 226',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (249,null,'제목 227','내용 227',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (250,null,'제목 228','내용 228',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (251,null,'제목 229','내용 229',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (252,null,'제목 230','내용 230',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (253,null,'제목 231','내용 231',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (254,null,'제목 232','내용 232',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (255,null,'제목 233','내용 233',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (256,null,'제목 234','내용 234',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (257,null,'제목 235','내용 235',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (258,null,'제목 236','내용 236',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (259,null,'제목 237','내용 237',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (260,null,'제목 238','내용 238',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (261,null,'제목 239','내용 239',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (262,null,'제목 240','내용 240',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (263,null,'제목 241','내용 241',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (264,null,'제목 242','내용 242',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (265,null,'제목 243','내용 243',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (266,null,'제목 244','내용 244',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (267,null,'제목 245','내용 245',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (268,null,'제목 246','내용 246',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (269,null,'제목 247','내용 247',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (270,null,'제목 248','내용 248',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (271,null,'제목 249','내용 249',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (272,null,'제목 250','내용 250',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (273,null,'제목 251','내용 251',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (274,null,'제목 252','내용 252',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (275,null,'제목 253','내용 253',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (276,null,'제목 254','내용 254',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (277,null,'제목 255','내용 255',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (278,null,'제목 256','내용 256',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (279,null,'제목 257','내용 257',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (280,null,'제목 258','내용 258',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (281,null,'제목 259','내용 259',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (282,null,'제목 260','내용 260',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (283,null,'제목 261','내용 261',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (284,null,'제목 262','내용 262',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (285,null,'제목 263','내용 263',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (286,null,'제목 264','내용 264',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (287,null,'제목 265','내용 265',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (288,null,'제목 266','내용 266',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (289,null,'제목 267','내용 267',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (290,null,'제목 268','내용 268',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (291,null,'제목 269','내용 269',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (292,null,'제목 270','내용 270',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (293,null,'제목 271','내용 271',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (294,null,'제목 272','내용 272',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (295,null,'제목 273','내용 273',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (296,null,'제목 274','내용 274',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (297,null,'제목 275','내용 275',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (298,null,'제목 276','내용 276',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (299,null,'제목 277','내용 277',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (300,null,'제목 278','내용 278',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (301,null,'제목 279','내용 279',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (302,null,'제목 280','내용 280',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (303,null,'제목 281','내용 281',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (304,null,'제목 282','내용 282',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (305,null,'제목 283','내용 283',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (306,null,'제목 284','내용 284',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (307,null,'제목 285','내용 285',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (308,null,'제목 286','내용 286',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (309,null,'제목 287','내용 287',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (310,null,'제목 288','내용 288',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (311,null,'제목 289','내용 289',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (312,null,'제목 290','내용 290',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (313,null,'제목 291','내용 291',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (314,null,'제목 292','내용 292',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (315,null,'제목 293','내용 293',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (316,null,'제목 294','내용 294',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (317,null,'제목 295','내용 295',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (318,null,'제목 296','내용 296',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (319,null,'제목 297','내용 297',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (320,null,'제목 298','내용 298',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (321,null,'제목 299','내용 299',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (322,null,'제목 300','내용 300',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (323,null,'제목 301','내용 301',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (324,null,'제목 302','내용 302',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (325,null,'제목 303','내용 303',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (326,null,'제목 304','내용 304',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (327,null,'제목 305','내용 305',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (328,null,'제목 306','내용 306',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (329,null,'제목 307','내용 307',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (330,null,'제목 308','내용 308',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (331,null,'제목 309','내용 309',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (332,null,'제목 310','내용 310',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (333,null,'제목 311','내용 311',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (334,null,'제목 312','내용 312',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (335,null,'제목 313','내용 313',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (336,null,'제목 314','내용 314',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (337,null,'제목 315','내용 315',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (338,null,'제목 316','내용 316',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (339,null,'제목 317','내용 317',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (340,null,'제목 318','내용 318',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (341,null,'제목 319','내용 319',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (342,null,'제목 320','내용 320',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (343,null,'제목 321','내용 321',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (344,null,'제목 322','내용 322',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (345,null,'제목 323','내용 323',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (346,null,'제목 324','내용 324',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (347,null,'제목 325','내용 325',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (348,null,'제목 326','내용 326',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (349,null,'제목 327','내용 327',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (350,null,'제목 328','내용 328',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (351,null,'제목 329','내용 329',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (352,null,'제목 330','내용 330',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (353,null,'제목 331','내용 331',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (354,null,'제목 332','내용 332',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (355,null,'제목 333','내용 333',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (356,null,'제목 334','내용 334',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (357,null,'제목 335','내용 335',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (358,null,'제목 336','내용 336',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (359,null,'제목 337','내용 337',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (360,null,'제목 338','내용 338',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (361,null,'제목 339','내용 339',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (362,null,'제목 340','내용 340',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (363,null,'제목 341','내용 341',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (364,null,'제목 342','내용 342',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (365,null,'제목 343','내용 343',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (366,null,'제목 344','내용 344',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (367,null,'제목 345','내용 345',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (368,null,'제목 346','내용 346',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (369,null,'제목 347','내용 347',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (370,null,'제목 348','내용 348',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (371,null,'제목 349','내용 349',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (372,null,'제목 350','내용 350',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (373,null,'제목 351','내용 351',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (374,null,'제목 352','내용 352',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (375,null,'제목 353','내용 353',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (376,null,'제목 354','내용 354',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (377,null,'제목 355','내용 355',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (378,null,'제목 356','내용 356',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (379,null,'제목 357','내용 357',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (380,null,'제목 358','내용 358',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (381,null,'제목 359','내용 359',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (382,null,'제목 360','내용 360',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (383,null,'제목 361','내용 361',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (384,null,'제목 362','내용 362',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (385,null,'제목 363','내용 363',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (386,null,'제목 364','내용 364',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (387,null,'제목 365','내용 365',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (388,null,'제목 366','내용 366',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (389,null,'제목 367','내용 367',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (390,null,'제목 368','내용 368',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (391,null,'제목 369','내용 369',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (392,null,'제목 370','내용 370',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (393,null,'제목 371','내용 371',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (394,null,'제목 372','내용 372',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (395,null,'제목 373','내용 373',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (396,null,'제목 374','내용 374',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (397,null,'제목 375','내용 375',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (398,null,'제목 376','내용 376',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (399,null,'제목 377','내용 377',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (400,null,'제목 378','내용 378',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (401,null,'제목 379','내용 379',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (402,null,'제목 380','내용 380',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (403,null,'제목 381','내용 381',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (404,null,'제목 382','내용 382',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (405,null,'제목 383','내용 383',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (406,null,'제목 384','내용 384',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (407,null,'제목 385','내용 385',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (408,null,'제목 386','내용 386',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (409,null,'제목 387','내용 387',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (410,null,'제목 388','내용 388',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (411,null,'제목 389','내용 389',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (412,null,'제목 390','내용 390',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (413,null,'제목 391','내용 391',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (414,null,'제목 392','내용 392',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (415,null,'제목 393','내용 393',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (416,null,'제목 394','내용 394',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (417,null,'제목 395','내용 395',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (418,null,'제목 396','내용 396',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (419,null,'제목 397','내용 397',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (420,null,'제목 398','내용 398',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (421,null,'제목 399','내용 399',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (422,null,'제목 400','내용 400',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (423,null,'제목 401','내용 401',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (424,null,'제목 402','내용 402',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (425,null,'제목 403','내용 403',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (426,null,'제목 404','내용 404',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (427,null,'제목 405','내용 405',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (428,null,'제목 406','내용 406',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (429,null,'제목 407','내용 407',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (430,null,'제목 408','내용 408',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (431,null,'제목 409','내용 409',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (432,null,'제목 410','내용 410',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (433,null,'제목 411','내용 411',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (434,null,'제목 412','내용 412',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (435,null,'제목 413','내용 413',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (436,null,'제목 414','내용 414',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (437,null,'제목 415','내용 415',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (438,null,'제목 416','내용 416',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (439,null,'제목 417','내용 417',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (440,null,'제목 418','내용 418',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (441,null,'제목 419','내용 419',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (442,null,'제목 420','내용 420',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (443,null,'제목 421','내용 421',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (444,null,'제목 422','내용 422',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (445,null,'제목 423','내용 423',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (446,null,'제목 424','내용 424',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (447,null,'제목 425','내용 425',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (448,null,'제목 426','내용 426',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (449,null,'제목 427','내용 427',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (450,null,'제목 428','내용 428',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (451,null,'제목 429','내용 429',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (452,null,'제목 430','내용 430',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (453,null,'제목 431','내용 431',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (454,null,'제목 432','내용 432',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (455,null,'제목 433','내용 433',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (456,null,'제목 434','내용 434',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (457,null,'제목 435','내용 435',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (458,null,'제목 436','내용 436',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (459,null,'제목 437','내용 437',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (460,null,'제목 438','내용 438',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (461,null,'제목 439','내용 439',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (462,null,'제목 440','내용 440',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (463,null,'제목 441','내용 441',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (464,null,'제목 442','내용 442',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (465,null,'제목 443','내용 443',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (466,null,'제목 444','내용 444',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (467,null,'제목 445','내용 445',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (468,null,'제목 446','내용 446',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (469,null,'제목 447','내용 447',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (470,null,'제목 448','내용 448',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (471,null,'제목 449','내용 449',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (472,null,'제목 450','내용 450',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (473,null,'제목 451','내용 451',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (474,null,'제목 452','내용 452',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (475,null,'제목 453','내용 453',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (476,null,'제목 454','내용 454',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (477,null,'제목 455','내용 455',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (478,null,'제목 456','내용 456',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (479,null,'제목 457','내용 457',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (480,null,'제목 458','내용 458',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (481,null,'제목 459','내용 459',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (482,null,'제목 460','내용 460',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (483,null,'제목 461','내용 461',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (484,null,'제목 462','내용 462',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (485,null,'제목 463','내용 463',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (486,null,'제목 464','내용 464',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (487,null,'제목 465','내용 465',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (488,null,'제목 466','내용 466',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (489,null,'제목 467','내용 467',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (490,null,'제목 468','내용 468',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (491,null,'제목 469','내용 469',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (492,null,'제목 470','내용 470',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (493,null,'제목 471','내용 471',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (494,null,'제목 472','내용 472',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (495,null,'제목 473','내용 473',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (496,null,'제목 474','내용 474',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (497,null,'제목 475','내용 475',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (498,null,'제목 476','내용 476',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (499,null,'제목 477','내용 477',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (500,null,'제목 478','내용 478',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (501,null,'제목 479','내용 479',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (502,null,'제목 480','내용 480',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (503,null,'제목 481','내용 481',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (504,null,'제목 482','내용 482',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (505,null,'제목 483','내용 483',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (506,null,'제목 484','내용 484',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (507,null,'제목 485','내용 485',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (508,null,'제목 486','내용 486',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (509,null,'제목 487','내용 487',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (510,null,'제목 488','내용 488',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (511,null,'제목 489','내용 489',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (512,null,'제목 490','내용 490',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (513,null,'제목 491','내용 491',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (514,null,'제목 492','내용 492',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (515,null,'제목 493','내용 493',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (516,null,'제목 494','내용 494',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (517,null,'제목 495','내용 495',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (518,null,'제목 496','내용 496',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (519,null,'제목 497','내용 497',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (520,null,'제목 498','내용 498',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (521,null,'제목 499','내용 499',2,'Y',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (522,null,'제목 500','내용 500',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
REM INSERTING into HSB.TB_FILE
SET DEFINE OFF;
Insert into HSB.TB_FILE (IDX,BOARD_IDX,ORIGINAL_FILE_NAME,STORED_FILE_NAME,FILE_SIZE,CREA_DTM,CREA_ID,DEL_GB) values (4,9,'s.zip','8a575ad74c9741d4b42fd8191a8c75bd.zip',486393,to_date('16/03/16','RR/MM/DD'),'Admin','N');
Insert into HSB.TB_FILE (IDX,BOARD_IDX,ORIGINAL_FILE_NAME,STORED_FILE_NAME,FILE_SIZE,CREA_DTM,CREA_ID,DEL_GB) values (5,10,'일일업무일지_160217_한상백.pptx','84546e2fc7334f258be18fc38fae687c.pptx',66856,to_date('16/03/16','RR/MM/DD'),'Admin','N');
Insert into HSB.TB_FILE (IDX,BOARD_IDX,ORIGINAL_FILE_NAME,STORED_FILE_NAME,FILE_SIZE,CREA_DTM,CREA_ID,DEL_GB) values (6,11,'일일업무일지_160211_한상백.pptx','42d2523d98734d30a9a8d391e3269c85.pptx',66890,to_date('16/03/16','RR/MM/DD'),'Admin','N');
Insert into HSB.TB_FILE (IDX,BOARD_IDX,ORIGINAL_FILE_NAME,STORED_FILE_NAME,FILE_SIZE,CREA_DTM,CREA_ID,DEL_GB) values (7,11,'일일업무일지_160223_한상백.pptx','ea5ef08f73e34afd95e8ee406ed35f06.pptx',66850,to_date('16/03/16','RR/MM/DD'),'Admin','Y');
Insert into HSB.TB_FILE (IDX,BOARD_IDX,ORIGINAL_FILE_NAME,STORED_FILE_NAME,FILE_SIZE,CREA_DTM,CREA_ID,DEL_GB) values (8,11,'일일업무일지_160310_한상백.pptx','52665ae3009249fb89aff0b5acf6b1ae.pptx',66764,to_date('16/03/16','RR/MM/DD'),'Admin','N');
Insert into HSB.TB_FILE (IDX,BOARD_IDX,ORIGINAL_FILE_NAME,STORED_FILE_NAME,FILE_SIZE,CREA_DTM,CREA_ID,DEL_GB) values (9,11,'일일업무일지_160222_한상백.pptx','1e5364a96e804b8ab1d80bf0ed4f90fa.pptx',66840,to_date('16/03/16','RR/MM/DD'),'Admin','Y');
Insert into HSB.TB_FILE (IDX,BOARD_IDX,ORIGINAL_FILE_NAME,STORED_FILE_NAME,FILE_SIZE,CREA_DTM,CREA_ID,DEL_GB) values (10,11,'일일업무일지_160316_한상백.pptx','0379db2f0d744bae93d09e032446daae.pptx',66949,to_date('16/03/16','RR/MM/DD'),'Admin','N');
Insert into HSB.TB_FILE (IDX,BOARD_IDX,ORIGINAL_FILE_NAME,STORED_FILE_NAME,FILE_SIZE,CREA_DTM,CREA_ID,DEL_GB) values (11,12,'일일업무일지_160304_한상백.pptx','b02fd73ec78640b5af06505186b8434f.pptx',66867,to_date('16/03/17','RR/MM/DD'),'Admin','Y');
Insert into HSB.TB_FILE (IDX,BOARD_IDX,ORIGINAL_FILE_NAME,STORED_FILE_NAME,FILE_SIZE,CREA_DTM,CREA_ID,DEL_GB) values (12,12,'일일업무일지_160307_한상백.pptx','4512ba78c546458298f3d099d71f38d8.pptx',55501,to_date('16/03/17','RR/MM/DD'),'Admin','N');
Insert into HSB.TB_FILE (IDX,BOARD_IDX,ORIGINAL_FILE_NAME,STORED_FILE_NAME,FILE_SIZE,CREA_DTM,CREA_ID,DEL_GB) values (13,12,'일일업무일지_160310_한상백.pptx','233bc4286a2445bb949e7eb8916e16d6.pptx',66764,to_date('16/03/17','RR/MM/DD'),'Admin','N');
--------------------------------------------------------
--  DDL for Index SYS_C007800
--------------------------------------------------------

  CREATE UNIQUE INDEX "HSB"."SYS_C007800" ON "HSB"."TB_BOARD" ("IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007807
--------------------------------------------------------

  CREATE UNIQUE INDEX "HSB"."SYS_C007807" ON "HSB"."TB_FILE" ("IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table TB_BOARD
--------------------------------------------------------

  ALTER TABLE "HSB"."TB_BOARD" ADD PRIMARY KEY ("IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HSB"."TB_BOARD" MODIFY ("CREA_ID" NOT NULL ENABLE);
  ALTER TABLE "HSB"."TB_BOARD" MODIFY ("CREA_DTM" NOT NULL ENABLE);
  ALTER TABLE "HSB"."TB_BOARD" MODIFY ("DEL_GB" NOT NULL ENABLE);
  ALTER TABLE "HSB"."TB_BOARD" MODIFY ("HIT_CNT" NOT NULL ENABLE);
  ALTER TABLE "HSB"."TB_BOARD" MODIFY ("CONTENTS" NOT NULL ENABLE);
  ALTER TABLE "HSB"."TB_BOARD" MODIFY ("TITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TB_FILE
--------------------------------------------------------

  ALTER TABLE "HSB"."TB_FILE" ADD PRIMARY KEY ("IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HSB"."TB_FILE" MODIFY ("DEL_GB" NOT NULL ENABLE);
  ALTER TABLE "HSB"."TB_FILE" MODIFY ("CREA_ID" NOT NULL ENABLE);
  ALTER TABLE "HSB"."TB_FILE" MODIFY ("CREA_DTM" NOT NULL ENABLE);
  ALTER TABLE "HSB"."TB_FILE" MODIFY ("STORED_FILE_NAME" NOT NULL ENABLE);
  ALTER TABLE "HSB"."TB_FILE" MODIFY ("ORIGINAL_FILE_NAME" NOT NULL ENABLE);
  ALTER TABLE "HSB"."TB_FILE" MODIFY ("BOARD_IDX" NOT NULL ENABLE);
