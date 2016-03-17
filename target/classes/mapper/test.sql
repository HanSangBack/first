--------------------------------------------------------
--  ������ ������ - �����-3��-17-2016   
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

   COMMENT ON COLUMN "HSB"."TB_BOARD"."IDX" IS '�ε���';
   COMMENT ON COLUMN "HSB"."TB_BOARD"."PARENT_IDX" IS '�θ�� �ε���';
   COMMENT ON COLUMN "HSB"."TB_BOARD"."TITLE" IS '����';
   COMMENT ON COLUMN "HSB"."TB_BOARD"."CONTENTS" IS '����';
   COMMENT ON COLUMN "HSB"."TB_BOARD"."HIT_CNT" IS '��ȸ��';
   COMMENT ON COLUMN "HSB"."TB_BOARD"."DEL_GB" IS '��������';
   COMMENT ON COLUMN "HSB"."TB_BOARD"."CREA_DTM" IS '��������';
   COMMENT ON COLUMN "HSB"."TB_BOARD"."CREA_ID" IS '������ ID';
   COMMENT ON TABLE "HSB"."TB_BOARD"  IS '�Խ���';
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
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (1,null,'����','����',0,'N',to_date('16/03/16','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (2,null,'�Խ��� ����2','�Խ��� ����2',14,'Y',to_date('16/03/16','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (3,null,'���ο� ��','�Դϴ�.',0,'N',to_date('16/03/16','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (4,null,'���� �ø���','�׽�Ʈ',0,'N',to_date('16/03/16','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (5,null,'���� ���� �ø���','���� �׽�Ʈ',1,'N',to_date('16/03/16','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (7,null,'���� ���� �ø��� �׽�Ʈ','�׽�Ʈ',1,'N',to_date('16/03/16','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (8,null,'���� Ȯ��','Ȯ��',0,'N',to_date('16/03/16','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (9,null,'���� Ȯ��','�׽�Ʈ',1,'N',to_date('16/03/16','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (10,null,'���� ���� ���ε� �׽�Ʈ','�׽�Ʈ',7,'N',to_date('16/03/16','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (11,null,'���� ���� ���ε� �׽�Ʈ','���� ���� ���ε� �׽�Ʈ',11,'N',to_date('16/03/16','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (12,null,'�Խñ�','�Խñ� Ȯ��',5,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (13,null,'����¡ �׽�Ʈ','Ȯ����',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (14,null,'����¡ �׽�Ʈ','Ȯ����',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (15,null,'����¡ �׽�Ʈ','Ȯ����',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (16,null,'����¡ �׽�Ʈ','Ȯ����',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (17,null,'����¡ �׽�Ʈ','Ȯ����',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (18,null,'����¡ �׽�Ʈ','Ȯ����',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (19,null,'����¡ �׽�Ʈ','Ȯ����',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (20,null,'����¡ �׽�Ʈ','Ȯ����',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (21,null,'����¡ �׽�Ʈ','Ȯ����',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (22,null,'����¡ �׽�Ʈ','Ȯ����',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (23,null,'���� 1','���� 1',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (24,null,'���� 2','���� 2',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (25,null,'���� 3','���� 3',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (26,null,'���� 4','���� 4',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (27,null,'���� 5','���� 5',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (28,null,'���� 6','���� 6',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (29,null,'���� 7','���� 7',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (30,null,'���� 8','���� 8',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (31,null,'���� 9','���� 9',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (32,null,'���� 10','���� 10',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (33,null,'���� 11','���� 11',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (34,null,'���� 12','���� 12',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (35,null,'���� 13','���� 13',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (36,null,'���� 14','���� 14',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (37,null,'���� 15','���� 15',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (38,null,'���� 16','���� 16',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (39,null,'���� 17','���� 17',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (40,null,'���� 18','���� 18',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (41,null,'���� 19','���� 19',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (42,null,'���� 20','���� 20',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (43,null,'���� 21','���� 21',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (44,null,'���� 22','���� 22',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (45,null,'���� 23','���� 23',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (46,null,'���� 24','���� 24',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (47,null,'���� 25','���� 25',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (48,null,'���� 26','���� 26',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (49,null,'���� 27','���� 27',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (50,null,'���� 28','���� 28',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (51,null,'���� 29','���� 29',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (52,null,'���� 30','���� 30',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (53,null,'���� 31','���� 31',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (54,null,'���� 32','���� 32',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (55,null,'���� 33','���� 33',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (56,null,'���� 34','���� 34',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (57,null,'���� 35','���� 35',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (58,null,'���� 36','���� 36',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (59,null,'���� 37','���� 37',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (60,null,'���� 38','���� 38',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (61,null,'���� 39','���� 39',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (62,null,'���� 40','���� 40',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (63,null,'���� 41','���� 41',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (64,null,'���� 42','���� 42',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (65,null,'���� 43','���� 43',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (66,null,'���� 44','���� 44',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (67,null,'���� 45','���� 45',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (68,null,'���� 46','���� 46',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (69,null,'���� 47','���� 47',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (70,null,'���� 48','���� 48',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (71,null,'���� 49','���� 49',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (72,null,'���� 50','���� 50',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (73,null,'���� 51','���� 51',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (74,null,'���� 52','���� 52',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (75,null,'���� 53','���� 53',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (76,null,'���� 54','���� 54',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (77,null,'���� 55','���� 55',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (78,null,'���� 56','���� 56',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (79,null,'���� 57','���� 57',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (80,null,'���� 58','���� 58',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (81,null,'���� 59','���� 59',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (82,null,'���� 60','���� 60',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (83,null,'���� 61','���� 61',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (84,null,'���� 62','���� 62',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (85,null,'���� 63','���� 63',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (86,null,'���� 64','���� 64',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (87,null,'���� 65','���� 65',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (88,null,'���� 66','���� 66',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (89,null,'���� 67','���� 67',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (90,null,'���� 68','���� 68',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (91,null,'���� 69','���� 69',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (92,null,'���� 70','���� 70',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (93,null,'���� 71','���� 71',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (94,null,'���� 72','���� 72',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (95,null,'���� 73','���� 73',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (96,null,'���� 74','���� 74',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (97,null,'���� 75','���� 75',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (98,null,'���� 76','���� 76',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (99,null,'���� 77','���� 77',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (100,null,'���� 78','���� 78',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (101,null,'���� 79','���� 79',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (102,null,'���� 80','���� 80',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (103,null,'���� 81','���� 81',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (104,null,'���� 82','���� 82',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (105,null,'���� 83','���� 83',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (106,null,'���� 84','���� 84',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (107,null,'���� 85','���� 85',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (108,null,'���� 86','���� 86',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (109,null,'���� 87','���� 87',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (110,null,'���� 88','���� 88',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (111,null,'���� 89','���� 89',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (112,null,'���� 90','���� 90',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (113,null,'���� 91','���� 91',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (114,null,'���� 92','���� 92',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (115,null,'���� 93','���� 93',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (116,null,'���� 94','���� 94',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (117,null,'���� 95','���� 95',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (118,null,'���� 96','���� 96',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (119,null,'���� 97','���� 97',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (120,null,'���� 98','���� 98',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (121,null,'���� 99','���� 99',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (122,null,'���� 100','���� 100',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (123,null,'���� 101','���� 101',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (124,null,'���� 102','���� 102',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (125,null,'���� 103','���� 103',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (126,null,'���� 104','���� 104',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (127,null,'���� 105','���� 105',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (128,null,'���� 106','���� 106',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (129,null,'���� 107','���� 107',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (130,null,'���� 108','���� 108',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (131,null,'���� 109','���� 109',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (132,null,'���� 110','���� 110',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (133,null,'���� 111','���� 111',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (134,null,'���� 112','���� 112',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (135,null,'���� 113','���� 113',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (136,null,'���� 114','���� 114',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (137,null,'���� 115','���� 115',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (138,null,'���� 116','���� 116',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (139,null,'���� 117','���� 117',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (140,null,'���� 118','���� 118',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (141,null,'���� 119','���� 119',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (142,null,'���� 120','���� 120',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (143,null,'���� 121','���� 121',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (144,null,'���� 122','���� 122',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (145,null,'���� 123','���� 123',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (146,null,'���� 124','���� 124',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (147,null,'���� 125','���� 125',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (148,null,'���� 126','���� 126',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (149,null,'���� 127','���� 127',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (150,null,'���� 128','���� 128',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (151,null,'���� 129','���� 129',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (152,null,'���� 130','���� 130',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (153,null,'���� 131','���� 131',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (154,null,'���� 132','���� 132',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (155,null,'���� 133','���� 133',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (156,null,'���� 134','���� 134',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (157,null,'���� 135','���� 135',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (158,null,'���� 136','���� 136',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (159,null,'���� 137','���� 137',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (160,null,'���� 138','���� 138',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (161,null,'���� 139','���� 139',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (162,null,'���� 140','���� 140',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (163,null,'���� 141','���� 141',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (164,null,'���� 142','���� 142',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (165,null,'���� 143','���� 143',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (166,null,'���� 144','���� 144',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (167,null,'���� 145','���� 145',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (168,null,'���� 146','���� 146',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (169,null,'���� 147','���� 147',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (170,null,'���� 148','���� 148',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (171,null,'���� 149','���� 149',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (172,null,'���� 150','���� 150',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (173,null,'���� 151','���� 151',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (174,null,'���� 152','���� 152',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (175,null,'���� 153','���� 153',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (176,null,'���� 154','���� 154',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (177,null,'���� 155','���� 155',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (178,null,'���� 156','���� 156',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (179,null,'���� 157','���� 157',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (180,null,'���� 158','���� 158',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (181,null,'���� 159','���� 159',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (182,null,'���� 160','���� 160',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (183,null,'���� 161','���� 161',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (184,null,'���� 162','���� 162',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (185,null,'���� 163','���� 163',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (186,null,'���� 164','���� 164',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (187,null,'���� 165','���� 165',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (188,null,'���� 166','���� 166',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (189,null,'���� 167','���� 167',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (190,null,'���� 168','���� 168',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (191,null,'���� 169','���� 169',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (192,null,'���� 170','���� 170',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (193,null,'���� 171','���� 171',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (194,null,'���� 172','���� 172',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (195,null,'���� 173','���� 173',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (196,null,'���� 174','���� 174',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (197,null,'���� 175','���� 175',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (198,null,'���� 176','���� 176',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (199,null,'���� 177','���� 177',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (200,null,'���� 178','���� 178',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (201,null,'���� 179','���� 179',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (202,null,'���� 180','���� 180',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (203,null,'���� 181','���� 181',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (204,null,'���� 182','���� 182',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (205,null,'���� 183','���� 183',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (206,null,'���� 184','���� 184',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (207,null,'���� 185','���� 185',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (208,null,'���� 186','���� 186',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (209,null,'���� 187','���� 187',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (210,null,'���� 188','���� 188',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (211,null,'���� 189','���� 189',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (212,null,'���� 190','���� 190',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (213,null,'���� 191','���� 191',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (214,null,'���� 192','���� 192',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (215,null,'���� 193','���� 193',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (216,null,'���� 194','���� 194',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (217,null,'���� 195','���� 195',1,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (218,null,'���� 196','���� 196',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (219,null,'���� 197','���� 197',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (220,null,'���� 198','���� 198',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (221,null,'���� 199','���� 199',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (222,null,'���� 200','���� 200',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (223,null,'���� 201','���� 201',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (224,null,'���� 202','���� 202',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (225,null,'���� 203','���� 203',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (226,null,'���� 204','���� 204',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (227,null,'���� 205','���� 205',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (228,null,'���� 206','���� 206',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (229,null,'���� 207','���� 207',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (230,null,'���� 208','���� 208',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (231,null,'���� 209','���� 209',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (232,null,'���� 210','���� 210',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (233,null,'���� 211','���� 211',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (234,null,'���� 212','���� 212',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (235,null,'���� 213','���� 213',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (236,null,'���� 214','���� 214',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (237,null,'���� 215','���� 215',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (238,null,'���� 216','���� 216',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (239,null,'���� 217','���� 217',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (240,null,'���� 218','���� 218',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (241,null,'���� 219','���� 219',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (242,null,'���� 220','���� 220',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (243,null,'���� 221','���� 221',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (244,null,'���� 222','���� 222',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (245,null,'���� 223','���� 223',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (246,null,'���� 224','���� 224',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (247,null,'���� 225','���� 225',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (248,null,'���� 226','���� 226',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (249,null,'���� 227','���� 227',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (250,null,'���� 228','���� 228',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (251,null,'���� 229','���� 229',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (252,null,'���� 230','���� 230',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (253,null,'���� 231','���� 231',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (254,null,'���� 232','���� 232',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (255,null,'���� 233','���� 233',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (256,null,'���� 234','���� 234',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (257,null,'���� 235','���� 235',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (258,null,'���� 236','���� 236',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (259,null,'���� 237','���� 237',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (260,null,'���� 238','���� 238',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (261,null,'���� 239','���� 239',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (262,null,'���� 240','���� 240',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (263,null,'���� 241','���� 241',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (264,null,'���� 242','���� 242',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (265,null,'���� 243','���� 243',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (266,null,'���� 244','���� 244',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (267,null,'���� 245','���� 245',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (268,null,'���� 246','���� 246',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (269,null,'���� 247','���� 247',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (270,null,'���� 248','���� 248',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (271,null,'���� 249','���� 249',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (272,null,'���� 250','���� 250',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (273,null,'���� 251','���� 251',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (274,null,'���� 252','���� 252',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (275,null,'���� 253','���� 253',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (276,null,'���� 254','���� 254',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (277,null,'���� 255','���� 255',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (278,null,'���� 256','���� 256',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (279,null,'���� 257','���� 257',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (280,null,'���� 258','���� 258',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (281,null,'���� 259','���� 259',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (282,null,'���� 260','���� 260',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (283,null,'���� 261','���� 261',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (284,null,'���� 262','���� 262',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (285,null,'���� 263','���� 263',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (286,null,'���� 264','���� 264',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (287,null,'���� 265','���� 265',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (288,null,'���� 266','���� 266',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (289,null,'���� 267','���� 267',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (290,null,'���� 268','���� 268',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (291,null,'���� 269','���� 269',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (292,null,'���� 270','���� 270',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (293,null,'���� 271','���� 271',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (294,null,'���� 272','���� 272',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (295,null,'���� 273','���� 273',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (296,null,'���� 274','���� 274',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (297,null,'���� 275','���� 275',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (298,null,'���� 276','���� 276',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (299,null,'���� 277','���� 277',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (300,null,'���� 278','���� 278',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (301,null,'���� 279','���� 279',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (302,null,'���� 280','���� 280',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (303,null,'���� 281','���� 281',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (304,null,'���� 282','���� 282',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (305,null,'���� 283','���� 283',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (306,null,'���� 284','���� 284',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (307,null,'���� 285','���� 285',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (308,null,'���� 286','���� 286',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (309,null,'���� 287','���� 287',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (310,null,'���� 288','���� 288',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (311,null,'���� 289','���� 289',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (312,null,'���� 290','���� 290',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (313,null,'���� 291','���� 291',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (314,null,'���� 292','���� 292',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (315,null,'���� 293','���� 293',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (316,null,'���� 294','���� 294',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (317,null,'���� 295','���� 295',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (318,null,'���� 296','���� 296',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (319,null,'���� 297','���� 297',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (320,null,'���� 298','���� 298',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (321,null,'���� 299','���� 299',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (322,null,'���� 300','���� 300',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (323,null,'���� 301','���� 301',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (324,null,'���� 302','���� 302',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (325,null,'���� 303','���� 303',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (326,null,'���� 304','���� 304',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (327,null,'���� 305','���� 305',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (328,null,'���� 306','���� 306',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (329,null,'���� 307','���� 307',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (330,null,'���� 308','���� 308',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (331,null,'���� 309','���� 309',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (332,null,'���� 310','���� 310',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (333,null,'���� 311','���� 311',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (334,null,'���� 312','���� 312',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (335,null,'���� 313','���� 313',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (336,null,'���� 314','���� 314',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (337,null,'���� 315','���� 315',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (338,null,'���� 316','���� 316',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (339,null,'���� 317','���� 317',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (340,null,'���� 318','���� 318',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (341,null,'���� 319','���� 319',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (342,null,'���� 320','���� 320',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (343,null,'���� 321','���� 321',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (344,null,'���� 322','���� 322',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (345,null,'���� 323','���� 323',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (346,null,'���� 324','���� 324',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (347,null,'���� 325','���� 325',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (348,null,'���� 326','���� 326',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (349,null,'���� 327','���� 327',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (350,null,'���� 328','���� 328',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (351,null,'���� 329','���� 329',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (352,null,'���� 330','���� 330',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (353,null,'���� 331','���� 331',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (354,null,'���� 332','���� 332',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (355,null,'���� 333','���� 333',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (356,null,'���� 334','���� 334',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (357,null,'���� 335','���� 335',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (358,null,'���� 336','���� 336',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (359,null,'���� 337','���� 337',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (360,null,'���� 338','���� 338',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (361,null,'���� 339','���� 339',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (362,null,'���� 340','���� 340',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (363,null,'���� 341','���� 341',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (364,null,'���� 342','���� 342',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (365,null,'���� 343','���� 343',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (366,null,'���� 344','���� 344',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (367,null,'���� 345','���� 345',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (368,null,'���� 346','���� 346',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (369,null,'���� 347','���� 347',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (370,null,'���� 348','���� 348',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (371,null,'���� 349','���� 349',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (372,null,'���� 350','���� 350',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (373,null,'���� 351','���� 351',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (374,null,'���� 352','���� 352',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (375,null,'���� 353','���� 353',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (376,null,'���� 354','���� 354',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (377,null,'���� 355','���� 355',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (378,null,'���� 356','���� 356',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (379,null,'���� 357','���� 357',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (380,null,'���� 358','���� 358',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (381,null,'���� 359','���� 359',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (382,null,'���� 360','���� 360',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (383,null,'���� 361','���� 361',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (384,null,'���� 362','���� 362',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (385,null,'���� 363','���� 363',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (386,null,'���� 364','���� 364',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (387,null,'���� 365','���� 365',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (388,null,'���� 366','���� 366',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (389,null,'���� 367','���� 367',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (390,null,'���� 368','���� 368',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (391,null,'���� 369','���� 369',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (392,null,'���� 370','���� 370',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (393,null,'���� 371','���� 371',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (394,null,'���� 372','���� 372',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (395,null,'���� 373','���� 373',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (396,null,'���� 374','���� 374',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (397,null,'���� 375','���� 375',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (398,null,'���� 376','���� 376',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (399,null,'���� 377','���� 377',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (400,null,'���� 378','���� 378',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (401,null,'���� 379','���� 379',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (402,null,'���� 380','���� 380',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (403,null,'���� 381','���� 381',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (404,null,'���� 382','���� 382',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (405,null,'���� 383','���� 383',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (406,null,'���� 384','���� 384',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (407,null,'���� 385','���� 385',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (408,null,'���� 386','���� 386',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (409,null,'���� 387','���� 387',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (410,null,'���� 388','���� 388',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (411,null,'���� 389','���� 389',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (412,null,'���� 390','���� 390',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (413,null,'���� 391','���� 391',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (414,null,'���� 392','���� 392',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (415,null,'���� 393','���� 393',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (416,null,'���� 394','���� 394',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (417,null,'���� 395','���� 395',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (418,null,'���� 396','���� 396',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (419,null,'���� 397','���� 397',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (420,null,'���� 398','���� 398',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (421,null,'���� 399','���� 399',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (422,null,'���� 400','���� 400',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (423,null,'���� 401','���� 401',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (424,null,'���� 402','���� 402',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (425,null,'���� 403','���� 403',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (426,null,'���� 404','���� 404',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (427,null,'���� 405','���� 405',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (428,null,'���� 406','���� 406',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (429,null,'���� 407','���� 407',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (430,null,'���� 408','���� 408',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (431,null,'���� 409','���� 409',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (432,null,'���� 410','���� 410',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (433,null,'���� 411','���� 411',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (434,null,'���� 412','���� 412',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (435,null,'���� 413','���� 413',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (436,null,'���� 414','���� 414',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (437,null,'���� 415','���� 415',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (438,null,'���� 416','���� 416',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (439,null,'���� 417','���� 417',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (440,null,'���� 418','���� 418',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (441,null,'���� 419','���� 419',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (442,null,'���� 420','���� 420',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (443,null,'���� 421','���� 421',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (444,null,'���� 422','���� 422',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (445,null,'���� 423','���� 423',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (446,null,'���� 424','���� 424',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (447,null,'���� 425','���� 425',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (448,null,'���� 426','���� 426',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (449,null,'���� 427','���� 427',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (450,null,'���� 428','���� 428',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (451,null,'���� 429','���� 429',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (452,null,'���� 430','���� 430',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (453,null,'���� 431','���� 431',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (454,null,'���� 432','���� 432',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (455,null,'���� 433','���� 433',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (456,null,'���� 434','���� 434',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (457,null,'���� 435','���� 435',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (458,null,'���� 436','���� 436',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (459,null,'���� 437','���� 437',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (460,null,'���� 438','���� 438',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (461,null,'���� 439','���� 439',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (462,null,'���� 440','���� 440',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (463,null,'���� 441','���� 441',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (464,null,'���� 442','���� 442',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (465,null,'���� 443','���� 443',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (466,null,'���� 444','���� 444',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (467,null,'���� 445','���� 445',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (468,null,'���� 446','���� 446',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (469,null,'���� 447','���� 447',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (470,null,'���� 448','���� 448',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (471,null,'���� 449','���� 449',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (472,null,'���� 450','���� 450',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (473,null,'���� 451','���� 451',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (474,null,'���� 452','���� 452',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (475,null,'���� 453','���� 453',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (476,null,'���� 454','���� 454',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (477,null,'���� 455','���� 455',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (478,null,'���� 456','���� 456',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (479,null,'���� 457','���� 457',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (480,null,'���� 458','���� 458',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (481,null,'���� 459','���� 459',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (482,null,'���� 460','���� 460',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (483,null,'���� 461','���� 461',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (484,null,'���� 462','���� 462',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (485,null,'���� 463','���� 463',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (486,null,'���� 464','���� 464',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (487,null,'���� 465','���� 465',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (488,null,'���� 466','���� 466',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (489,null,'���� 467','���� 467',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (490,null,'���� 468','���� 468',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (491,null,'���� 469','���� 469',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (492,null,'���� 470','���� 470',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (493,null,'���� 471','���� 471',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (494,null,'���� 472','���� 472',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (495,null,'���� 473','���� 473',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (496,null,'���� 474','���� 474',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (497,null,'���� 475','���� 475',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (498,null,'���� 476','���� 476',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (499,null,'���� 477','���� 477',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (500,null,'���� 478','���� 478',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (501,null,'���� 479','���� 479',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (502,null,'���� 480','���� 480',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (503,null,'���� 481','���� 481',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (504,null,'���� 482','���� 482',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (505,null,'���� 483','���� 483',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (506,null,'���� 484','���� 484',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (507,null,'���� 485','���� 485',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (508,null,'���� 486','���� 486',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (509,null,'���� 487','���� 487',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (510,null,'���� 488','���� 488',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (511,null,'���� 489','���� 489',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (512,null,'���� 490','���� 490',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (513,null,'���� 491','���� 491',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (514,null,'���� 492','���� 492',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (515,null,'���� 493','���� 493',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (516,null,'���� 494','���� 494',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (517,null,'���� 495','���� 495',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (518,null,'���� 496','���� 496',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (519,null,'���� 497','���� 497',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (520,null,'���� 498','���� 498',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (521,null,'���� 499','���� 499',2,'Y',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (522,null,'���� 500','���� 500',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
REM INSERTING into HSB.TB_FILE
SET DEFINE OFF;
Insert into HSB.TB_FILE (IDX,BOARD_IDX,ORIGINAL_FILE_NAME,STORED_FILE_NAME,FILE_SIZE,CREA_DTM,CREA_ID,DEL_GB) values (4,9,'s.zip','8a575ad74c9741d4b42fd8191a8c75bd.zip',486393,to_date('16/03/16','RR/MM/DD'),'Admin','N');
Insert into HSB.TB_FILE (IDX,BOARD_IDX,ORIGINAL_FILE_NAME,STORED_FILE_NAME,FILE_SIZE,CREA_DTM,CREA_ID,DEL_GB) values (5,10,'���Ͼ�������_160217_�ѻ��.pptx','84546e2fc7334f258be18fc38fae687c.pptx',66856,to_date('16/03/16','RR/MM/DD'),'Admin','N');
Insert into HSB.TB_FILE (IDX,BOARD_IDX,ORIGINAL_FILE_NAME,STORED_FILE_NAME,FILE_SIZE,CREA_DTM,CREA_ID,DEL_GB) values (6,11,'���Ͼ�������_160211_�ѻ��.pptx','42d2523d98734d30a9a8d391e3269c85.pptx',66890,to_date('16/03/16','RR/MM/DD'),'Admin','N');
Insert into HSB.TB_FILE (IDX,BOARD_IDX,ORIGINAL_FILE_NAME,STORED_FILE_NAME,FILE_SIZE,CREA_DTM,CREA_ID,DEL_GB) values (7,11,'���Ͼ�������_160223_�ѻ��.pptx','ea5ef08f73e34afd95e8ee406ed35f06.pptx',66850,to_date('16/03/16','RR/MM/DD'),'Admin','Y');
Insert into HSB.TB_FILE (IDX,BOARD_IDX,ORIGINAL_FILE_NAME,STORED_FILE_NAME,FILE_SIZE,CREA_DTM,CREA_ID,DEL_GB) values (8,11,'���Ͼ�������_160310_�ѻ��.pptx','52665ae3009249fb89aff0b5acf6b1ae.pptx',66764,to_date('16/03/16','RR/MM/DD'),'Admin','N');
Insert into HSB.TB_FILE (IDX,BOARD_IDX,ORIGINAL_FILE_NAME,STORED_FILE_NAME,FILE_SIZE,CREA_DTM,CREA_ID,DEL_GB) values (9,11,'���Ͼ�������_160222_�ѻ��.pptx','1e5364a96e804b8ab1d80bf0ed4f90fa.pptx',66840,to_date('16/03/16','RR/MM/DD'),'Admin','Y');
Insert into HSB.TB_FILE (IDX,BOARD_IDX,ORIGINAL_FILE_NAME,STORED_FILE_NAME,FILE_SIZE,CREA_DTM,CREA_ID,DEL_GB) values (10,11,'���Ͼ�������_160316_�ѻ��.pptx','0379db2f0d744bae93d09e032446daae.pptx',66949,to_date('16/03/16','RR/MM/DD'),'Admin','N');
Insert into HSB.TB_FILE (IDX,BOARD_IDX,ORIGINAL_FILE_NAME,STORED_FILE_NAME,FILE_SIZE,CREA_DTM,CREA_ID,DEL_GB) values (11,12,'���Ͼ�������_160304_�ѻ��.pptx','b02fd73ec78640b5af06505186b8434f.pptx',66867,to_date('16/03/17','RR/MM/DD'),'Admin','Y');
Insert into HSB.TB_FILE (IDX,BOARD_IDX,ORIGINAL_FILE_NAME,STORED_FILE_NAME,FILE_SIZE,CREA_DTM,CREA_ID,DEL_GB) values (12,12,'���Ͼ�������_160307_�ѻ��.pptx','4512ba78c546458298f3d099d71f38d8.pptx',55501,to_date('16/03/17','RR/MM/DD'),'Admin','N');
Insert into HSB.TB_FILE (IDX,BOARD_IDX,ORIGINAL_FILE_NAME,STORED_FILE_NAME,FILE_SIZE,CREA_DTM,CREA_ID,DEL_GB) values (13,12,'���Ͼ�������_160310_�ѻ��.pptx','233bc4286a2445bb949e7eb8916e16d6.pptx',66764,to_date('16/03/17','RR/MM/DD'),'Admin','N');
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
