--------------------------------------------------------
--  颇老捞 积己凳 - 格夸老-3岿-17-2016   
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

   COMMENT ON COLUMN "HSB"."TB_BOARD"."IDX" IS '牢郸胶';
   COMMENT ON COLUMN "HSB"."TB_BOARD"."PARENT_IDX" IS '何葛臂 牢郸胶';
   COMMENT ON COLUMN "HSB"."TB_BOARD"."TITLE" IS '力格';
   COMMENT ON COLUMN "HSB"."TB_BOARD"."CONTENTS" IS '郴侩';
   COMMENT ON COLUMN "HSB"."TB_BOARD"."HIT_CNT" IS '炼雀荐';
   COMMENT ON COLUMN "HSB"."TB_BOARD"."DEL_GB" IS '昏力备盒';
   COMMENT ON COLUMN "HSB"."TB_BOARD"."CREA_DTM" IS '积己老磊';
   COMMENT ON COLUMN "HSB"."TB_BOARD"."CREA_ID" IS '积己磊 ID';
   COMMENT ON TABLE "HSB"."TB_BOARD"  IS '霸矫魄';
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
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (1,null,'力格','郴侩',0,'N',to_date('16/03/16','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (2,null,'霸矫魄 力格2','霸矫魄 郴侩2',14,'Y',to_date('16/03/16','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (3,null,'货肺款 臂','涝聪促.',0,'N',to_date('16/03/16','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (4,null,'颇老 棵府扁','抛胶飘',0,'N',to_date('16/03/16','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (5,null,'窜老 颇老 棵府扁','窜老 抛胶飘',1,'N',to_date('16/03/16','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (7,null,'窜老 颇老 棵府扁 抛胶飘','抛胶飘',1,'N',to_date('16/03/16','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (8,null,'辨捞 犬牢','犬牢',0,'N',to_date('16/03/16','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (9,null,'辨捞 犬牢','抛胶飘',1,'N',to_date('16/03/16','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (10,null,'窜老 颇老 诀肺靛 抛胶飘','抛胶飘',7,'N',to_date('16/03/16','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (11,null,'促吝 颇老 诀肺靛 抛胶飘','促吝 颇老 诀肺靛 抛胶飘',11,'N',to_date('16/03/16','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (12,null,'霸矫臂','霸矫臂 犬牢',5,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (13,null,'其捞隆 抛胶飘','犬牢吝',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (14,null,'其捞隆 抛胶飘','犬牢吝',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (15,null,'其捞隆 抛胶飘','犬牢吝',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (16,null,'其捞隆 抛胶飘','犬牢吝',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (17,null,'其捞隆 抛胶飘','犬牢吝',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (18,null,'其捞隆 抛胶飘','犬牢吝',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (19,null,'其捞隆 抛胶飘','犬牢吝',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (20,null,'其捞隆 抛胶飘','犬牢吝',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (21,null,'其捞隆 抛胶飘','犬牢吝',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (22,null,'其捞隆 抛胶飘','犬牢吝',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (23,null,'力格 1','郴侩 1',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (24,null,'力格 2','郴侩 2',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (25,null,'力格 3','郴侩 3',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (26,null,'力格 4','郴侩 4',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (27,null,'力格 5','郴侩 5',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (28,null,'力格 6','郴侩 6',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (29,null,'力格 7','郴侩 7',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (30,null,'力格 8','郴侩 8',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (31,null,'力格 9','郴侩 9',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (32,null,'力格 10','郴侩 10',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (33,null,'力格 11','郴侩 11',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (34,null,'力格 12','郴侩 12',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (35,null,'力格 13','郴侩 13',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (36,null,'力格 14','郴侩 14',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (37,null,'力格 15','郴侩 15',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (38,null,'力格 16','郴侩 16',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (39,null,'力格 17','郴侩 17',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (40,null,'力格 18','郴侩 18',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (41,null,'力格 19','郴侩 19',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (42,null,'力格 20','郴侩 20',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (43,null,'力格 21','郴侩 21',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (44,null,'力格 22','郴侩 22',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (45,null,'力格 23','郴侩 23',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (46,null,'力格 24','郴侩 24',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (47,null,'力格 25','郴侩 25',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (48,null,'力格 26','郴侩 26',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (49,null,'力格 27','郴侩 27',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (50,null,'力格 28','郴侩 28',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (51,null,'力格 29','郴侩 29',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (52,null,'力格 30','郴侩 30',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (53,null,'力格 31','郴侩 31',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (54,null,'力格 32','郴侩 32',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (55,null,'力格 33','郴侩 33',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (56,null,'力格 34','郴侩 34',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (57,null,'力格 35','郴侩 35',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (58,null,'力格 36','郴侩 36',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (59,null,'力格 37','郴侩 37',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (60,null,'力格 38','郴侩 38',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (61,null,'力格 39','郴侩 39',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (62,null,'力格 40','郴侩 40',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (63,null,'力格 41','郴侩 41',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (64,null,'力格 42','郴侩 42',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (65,null,'力格 43','郴侩 43',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (66,null,'力格 44','郴侩 44',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (67,null,'力格 45','郴侩 45',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (68,null,'力格 46','郴侩 46',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (69,null,'力格 47','郴侩 47',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (70,null,'力格 48','郴侩 48',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (71,null,'力格 49','郴侩 49',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (72,null,'力格 50','郴侩 50',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (73,null,'力格 51','郴侩 51',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (74,null,'力格 52','郴侩 52',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (75,null,'力格 53','郴侩 53',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (76,null,'力格 54','郴侩 54',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (77,null,'力格 55','郴侩 55',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (78,null,'力格 56','郴侩 56',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (79,null,'力格 57','郴侩 57',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (80,null,'力格 58','郴侩 58',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (81,null,'力格 59','郴侩 59',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (82,null,'力格 60','郴侩 60',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (83,null,'力格 61','郴侩 61',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (84,null,'力格 62','郴侩 62',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (85,null,'力格 63','郴侩 63',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (86,null,'力格 64','郴侩 64',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (87,null,'力格 65','郴侩 65',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (88,null,'力格 66','郴侩 66',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (89,null,'力格 67','郴侩 67',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (90,null,'力格 68','郴侩 68',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (91,null,'力格 69','郴侩 69',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (92,null,'力格 70','郴侩 70',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (93,null,'力格 71','郴侩 71',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (94,null,'力格 72','郴侩 72',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (95,null,'力格 73','郴侩 73',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (96,null,'力格 74','郴侩 74',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (97,null,'力格 75','郴侩 75',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (98,null,'力格 76','郴侩 76',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (99,null,'力格 77','郴侩 77',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (100,null,'力格 78','郴侩 78',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (101,null,'力格 79','郴侩 79',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (102,null,'力格 80','郴侩 80',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (103,null,'力格 81','郴侩 81',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (104,null,'力格 82','郴侩 82',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (105,null,'力格 83','郴侩 83',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (106,null,'力格 84','郴侩 84',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (107,null,'力格 85','郴侩 85',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (108,null,'力格 86','郴侩 86',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (109,null,'力格 87','郴侩 87',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (110,null,'力格 88','郴侩 88',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (111,null,'力格 89','郴侩 89',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (112,null,'力格 90','郴侩 90',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (113,null,'力格 91','郴侩 91',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (114,null,'力格 92','郴侩 92',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (115,null,'力格 93','郴侩 93',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (116,null,'力格 94','郴侩 94',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (117,null,'力格 95','郴侩 95',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (118,null,'力格 96','郴侩 96',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (119,null,'力格 97','郴侩 97',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (120,null,'力格 98','郴侩 98',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (121,null,'力格 99','郴侩 99',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (122,null,'力格 100','郴侩 100',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (123,null,'力格 101','郴侩 101',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (124,null,'力格 102','郴侩 102',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (125,null,'力格 103','郴侩 103',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (126,null,'力格 104','郴侩 104',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (127,null,'力格 105','郴侩 105',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (128,null,'力格 106','郴侩 106',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (129,null,'力格 107','郴侩 107',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (130,null,'力格 108','郴侩 108',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (131,null,'力格 109','郴侩 109',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (132,null,'力格 110','郴侩 110',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (133,null,'力格 111','郴侩 111',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (134,null,'力格 112','郴侩 112',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (135,null,'力格 113','郴侩 113',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (136,null,'力格 114','郴侩 114',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (137,null,'力格 115','郴侩 115',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (138,null,'力格 116','郴侩 116',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (139,null,'力格 117','郴侩 117',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (140,null,'力格 118','郴侩 118',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (141,null,'力格 119','郴侩 119',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (142,null,'力格 120','郴侩 120',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (143,null,'力格 121','郴侩 121',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (144,null,'力格 122','郴侩 122',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (145,null,'力格 123','郴侩 123',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (146,null,'力格 124','郴侩 124',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (147,null,'力格 125','郴侩 125',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (148,null,'力格 126','郴侩 126',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (149,null,'力格 127','郴侩 127',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (150,null,'力格 128','郴侩 128',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (151,null,'力格 129','郴侩 129',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (152,null,'力格 130','郴侩 130',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (153,null,'力格 131','郴侩 131',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (154,null,'力格 132','郴侩 132',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (155,null,'力格 133','郴侩 133',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (156,null,'力格 134','郴侩 134',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (157,null,'力格 135','郴侩 135',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (158,null,'力格 136','郴侩 136',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (159,null,'力格 137','郴侩 137',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (160,null,'力格 138','郴侩 138',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (161,null,'力格 139','郴侩 139',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (162,null,'力格 140','郴侩 140',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (163,null,'力格 141','郴侩 141',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (164,null,'力格 142','郴侩 142',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (165,null,'力格 143','郴侩 143',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (166,null,'力格 144','郴侩 144',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (167,null,'力格 145','郴侩 145',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (168,null,'力格 146','郴侩 146',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (169,null,'力格 147','郴侩 147',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (170,null,'力格 148','郴侩 148',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (171,null,'力格 149','郴侩 149',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (172,null,'力格 150','郴侩 150',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (173,null,'力格 151','郴侩 151',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (174,null,'力格 152','郴侩 152',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (175,null,'力格 153','郴侩 153',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (176,null,'力格 154','郴侩 154',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (177,null,'力格 155','郴侩 155',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (178,null,'力格 156','郴侩 156',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (179,null,'力格 157','郴侩 157',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (180,null,'力格 158','郴侩 158',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (181,null,'力格 159','郴侩 159',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (182,null,'力格 160','郴侩 160',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (183,null,'力格 161','郴侩 161',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (184,null,'力格 162','郴侩 162',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (185,null,'力格 163','郴侩 163',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (186,null,'力格 164','郴侩 164',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (187,null,'力格 165','郴侩 165',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (188,null,'力格 166','郴侩 166',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (189,null,'力格 167','郴侩 167',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (190,null,'力格 168','郴侩 168',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (191,null,'力格 169','郴侩 169',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (192,null,'力格 170','郴侩 170',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (193,null,'力格 171','郴侩 171',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (194,null,'力格 172','郴侩 172',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (195,null,'力格 173','郴侩 173',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (196,null,'力格 174','郴侩 174',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (197,null,'力格 175','郴侩 175',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (198,null,'力格 176','郴侩 176',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (199,null,'力格 177','郴侩 177',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (200,null,'力格 178','郴侩 178',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (201,null,'力格 179','郴侩 179',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (202,null,'力格 180','郴侩 180',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (203,null,'力格 181','郴侩 181',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (204,null,'力格 182','郴侩 182',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (205,null,'力格 183','郴侩 183',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (206,null,'力格 184','郴侩 184',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (207,null,'力格 185','郴侩 185',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (208,null,'力格 186','郴侩 186',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (209,null,'力格 187','郴侩 187',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (210,null,'力格 188','郴侩 188',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (211,null,'力格 189','郴侩 189',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (212,null,'力格 190','郴侩 190',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (213,null,'力格 191','郴侩 191',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (214,null,'力格 192','郴侩 192',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (215,null,'力格 193','郴侩 193',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (216,null,'力格 194','郴侩 194',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (217,null,'力格 195','郴侩 195',1,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (218,null,'力格 196','郴侩 196',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (219,null,'力格 197','郴侩 197',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (220,null,'力格 198','郴侩 198',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (221,null,'力格 199','郴侩 199',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (222,null,'力格 200','郴侩 200',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (223,null,'力格 201','郴侩 201',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (224,null,'力格 202','郴侩 202',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (225,null,'力格 203','郴侩 203',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (226,null,'力格 204','郴侩 204',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (227,null,'力格 205','郴侩 205',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (228,null,'力格 206','郴侩 206',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (229,null,'力格 207','郴侩 207',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (230,null,'力格 208','郴侩 208',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (231,null,'力格 209','郴侩 209',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (232,null,'力格 210','郴侩 210',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (233,null,'力格 211','郴侩 211',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (234,null,'力格 212','郴侩 212',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (235,null,'力格 213','郴侩 213',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (236,null,'力格 214','郴侩 214',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (237,null,'力格 215','郴侩 215',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (238,null,'力格 216','郴侩 216',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (239,null,'力格 217','郴侩 217',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (240,null,'力格 218','郴侩 218',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (241,null,'力格 219','郴侩 219',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (242,null,'力格 220','郴侩 220',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (243,null,'力格 221','郴侩 221',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (244,null,'力格 222','郴侩 222',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (245,null,'力格 223','郴侩 223',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (246,null,'力格 224','郴侩 224',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (247,null,'力格 225','郴侩 225',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (248,null,'力格 226','郴侩 226',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (249,null,'力格 227','郴侩 227',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (250,null,'力格 228','郴侩 228',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (251,null,'力格 229','郴侩 229',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (252,null,'力格 230','郴侩 230',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (253,null,'力格 231','郴侩 231',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (254,null,'力格 232','郴侩 232',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (255,null,'力格 233','郴侩 233',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (256,null,'力格 234','郴侩 234',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (257,null,'力格 235','郴侩 235',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (258,null,'力格 236','郴侩 236',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (259,null,'力格 237','郴侩 237',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (260,null,'力格 238','郴侩 238',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (261,null,'力格 239','郴侩 239',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (262,null,'力格 240','郴侩 240',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (263,null,'力格 241','郴侩 241',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (264,null,'力格 242','郴侩 242',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (265,null,'力格 243','郴侩 243',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (266,null,'力格 244','郴侩 244',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (267,null,'力格 245','郴侩 245',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (268,null,'力格 246','郴侩 246',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (269,null,'力格 247','郴侩 247',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (270,null,'力格 248','郴侩 248',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (271,null,'力格 249','郴侩 249',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (272,null,'力格 250','郴侩 250',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (273,null,'力格 251','郴侩 251',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (274,null,'力格 252','郴侩 252',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (275,null,'力格 253','郴侩 253',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (276,null,'力格 254','郴侩 254',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (277,null,'力格 255','郴侩 255',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (278,null,'力格 256','郴侩 256',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (279,null,'力格 257','郴侩 257',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (280,null,'力格 258','郴侩 258',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (281,null,'力格 259','郴侩 259',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (282,null,'力格 260','郴侩 260',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (283,null,'力格 261','郴侩 261',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (284,null,'力格 262','郴侩 262',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (285,null,'力格 263','郴侩 263',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (286,null,'力格 264','郴侩 264',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (287,null,'力格 265','郴侩 265',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (288,null,'力格 266','郴侩 266',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (289,null,'力格 267','郴侩 267',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (290,null,'力格 268','郴侩 268',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (291,null,'力格 269','郴侩 269',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (292,null,'力格 270','郴侩 270',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (293,null,'力格 271','郴侩 271',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (294,null,'力格 272','郴侩 272',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (295,null,'力格 273','郴侩 273',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (296,null,'力格 274','郴侩 274',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (297,null,'力格 275','郴侩 275',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (298,null,'力格 276','郴侩 276',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (299,null,'力格 277','郴侩 277',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (300,null,'力格 278','郴侩 278',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (301,null,'力格 279','郴侩 279',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (302,null,'力格 280','郴侩 280',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (303,null,'力格 281','郴侩 281',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (304,null,'力格 282','郴侩 282',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (305,null,'力格 283','郴侩 283',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (306,null,'力格 284','郴侩 284',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (307,null,'力格 285','郴侩 285',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (308,null,'力格 286','郴侩 286',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (309,null,'力格 287','郴侩 287',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (310,null,'力格 288','郴侩 288',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (311,null,'力格 289','郴侩 289',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (312,null,'力格 290','郴侩 290',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (313,null,'力格 291','郴侩 291',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (314,null,'力格 292','郴侩 292',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (315,null,'力格 293','郴侩 293',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (316,null,'力格 294','郴侩 294',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (317,null,'力格 295','郴侩 295',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (318,null,'力格 296','郴侩 296',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (319,null,'力格 297','郴侩 297',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (320,null,'力格 298','郴侩 298',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (321,null,'力格 299','郴侩 299',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (322,null,'力格 300','郴侩 300',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (323,null,'力格 301','郴侩 301',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (324,null,'力格 302','郴侩 302',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (325,null,'力格 303','郴侩 303',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (326,null,'力格 304','郴侩 304',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (327,null,'力格 305','郴侩 305',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (328,null,'力格 306','郴侩 306',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (329,null,'力格 307','郴侩 307',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (330,null,'力格 308','郴侩 308',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (331,null,'力格 309','郴侩 309',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (332,null,'力格 310','郴侩 310',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (333,null,'力格 311','郴侩 311',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (334,null,'力格 312','郴侩 312',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (335,null,'力格 313','郴侩 313',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (336,null,'力格 314','郴侩 314',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (337,null,'力格 315','郴侩 315',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (338,null,'力格 316','郴侩 316',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (339,null,'力格 317','郴侩 317',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (340,null,'力格 318','郴侩 318',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (341,null,'力格 319','郴侩 319',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (342,null,'力格 320','郴侩 320',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (343,null,'力格 321','郴侩 321',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (344,null,'力格 322','郴侩 322',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (345,null,'力格 323','郴侩 323',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (346,null,'力格 324','郴侩 324',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (347,null,'力格 325','郴侩 325',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (348,null,'力格 326','郴侩 326',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (349,null,'力格 327','郴侩 327',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (350,null,'力格 328','郴侩 328',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (351,null,'力格 329','郴侩 329',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (352,null,'力格 330','郴侩 330',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (353,null,'力格 331','郴侩 331',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (354,null,'力格 332','郴侩 332',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (355,null,'力格 333','郴侩 333',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (356,null,'力格 334','郴侩 334',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (357,null,'力格 335','郴侩 335',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (358,null,'力格 336','郴侩 336',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (359,null,'力格 337','郴侩 337',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (360,null,'力格 338','郴侩 338',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (361,null,'力格 339','郴侩 339',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (362,null,'力格 340','郴侩 340',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (363,null,'力格 341','郴侩 341',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (364,null,'力格 342','郴侩 342',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (365,null,'力格 343','郴侩 343',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (366,null,'力格 344','郴侩 344',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (367,null,'力格 345','郴侩 345',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (368,null,'力格 346','郴侩 346',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (369,null,'力格 347','郴侩 347',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (370,null,'力格 348','郴侩 348',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (371,null,'力格 349','郴侩 349',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (372,null,'力格 350','郴侩 350',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (373,null,'力格 351','郴侩 351',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (374,null,'力格 352','郴侩 352',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (375,null,'力格 353','郴侩 353',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (376,null,'力格 354','郴侩 354',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (377,null,'力格 355','郴侩 355',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (378,null,'力格 356','郴侩 356',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (379,null,'力格 357','郴侩 357',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (380,null,'力格 358','郴侩 358',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (381,null,'力格 359','郴侩 359',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (382,null,'力格 360','郴侩 360',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (383,null,'力格 361','郴侩 361',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (384,null,'力格 362','郴侩 362',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (385,null,'力格 363','郴侩 363',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (386,null,'力格 364','郴侩 364',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (387,null,'力格 365','郴侩 365',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (388,null,'力格 366','郴侩 366',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (389,null,'力格 367','郴侩 367',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (390,null,'力格 368','郴侩 368',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (391,null,'力格 369','郴侩 369',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (392,null,'力格 370','郴侩 370',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (393,null,'力格 371','郴侩 371',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (394,null,'力格 372','郴侩 372',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (395,null,'力格 373','郴侩 373',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (396,null,'力格 374','郴侩 374',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (397,null,'力格 375','郴侩 375',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (398,null,'力格 376','郴侩 376',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (399,null,'力格 377','郴侩 377',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (400,null,'力格 378','郴侩 378',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (401,null,'力格 379','郴侩 379',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (402,null,'力格 380','郴侩 380',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (403,null,'力格 381','郴侩 381',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (404,null,'力格 382','郴侩 382',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (405,null,'力格 383','郴侩 383',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (406,null,'力格 384','郴侩 384',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (407,null,'力格 385','郴侩 385',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (408,null,'力格 386','郴侩 386',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (409,null,'力格 387','郴侩 387',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (410,null,'力格 388','郴侩 388',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (411,null,'力格 389','郴侩 389',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (412,null,'力格 390','郴侩 390',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (413,null,'力格 391','郴侩 391',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (414,null,'力格 392','郴侩 392',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (415,null,'力格 393','郴侩 393',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (416,null,'力格 394','郴侩 394',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (417,null,'力格 395','郴侩 395',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (418,null,'力格 396','郴侩 396',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (419,null,'力格 397','郴侩 397',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (420,null,'力格 398','郴侩 398',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (421,null,'力格 399','郴侩 399',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (422,null,'力格 400','郴侩 400',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (423,null,'力格 401','郴侩 401',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (424,null,'力格 402','郴侩 402',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (425,null,'力格 403','郴侩 403',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (426,null,'力格 404','郴侩 404',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (427,null,'力格 405','郴侩 405',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (428,null,'力格 406','郴侩 406',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (429,null,'力格 407','郴侩 407',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (430,null,'力格 408','郴侩 408',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (431,null,'力格 409','郴侩 409',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (432,null,'力格 410','郴侩 410',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (433,null,'力格 411','郴侩 411',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (434,null,'力格 412','郴侩 412',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (435,null,'力格 413','郴侩 413',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (436,null,'力格 414','郴侩 414',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (437,null,'力格 415','郴侩 415',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (438,null,'力格 416','郴侩 416',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (439,null,'力格 417','郴侩 417',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (440,null,'力格 418','郴侩 418',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (441,null,'力格 419','郴侩 419',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (442,null,'力格 420','郴侩 420',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (443,null,'力格 421','郴侩 421',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (444,null,'力格 422','郴侩 422',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (445,null,'力格 423','郴侩 423',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (446,null,'力格 424','郴侩 424',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (447,null,'力格 425','郴侩 425',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (448,null,'力格 426','郴侩 426',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (449,null,'力格 427','郴侩 427',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (450,null,'力格 428','郴侩 428',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (451,null,'力格 429','郴侩 429',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (452,null,'力格 430','郴侩 430',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (453,null,'力格 431','郴侩 431',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (454,null,'力格 432','郴侩 432',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (455,null,'力格 433','郴侩 433',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (456,null,'力格 434','郴侩 434',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (457,null,'力格 435','郴侩 435',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (458,null,'力格 436','郴侩 436',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (459,null,'力格 437','郴侩 437',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (460,null,'力格 438','郴侩 438',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (461,null,'力格 439','郴侩 439',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (462,null,'力格 440','郴侩 440',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (463,null,'力格 441','郴侩 441',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (464,null,'力格 442','郴侩 442',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (465,null,'力格 443','郴侩 443',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (466,null,'力格 444','郴侩 444',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (467,null,'力格 445','郴侩 445',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (468,null,'力格 446','郴侩 446',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (469,null,'力格 447','郴侩 447',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (470,null,'力格 448','郴侩 448',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (471,null,'力格 449','郴侩 449',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (472,null,'力格 450','郴侩 450',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (473,null,'力格 451','郴侩 451',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (474,null,'力格 452','郴侩 452',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (475,null,'力格 453','郴侩 453',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (476,null,'力格 454','郴侩 454',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (477,null,'力格 455','郴侩 455',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (478,null,'力格 456','郴侩 456',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (479,null,'力格 457','郴侩 457',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (480,null,'力格 458','郴侩 458',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (481,null,'力格 459','郴侩 459',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (482,null,'力格 460','郴侩 460',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (483,null,'力格 461','郴侩 461',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (484,null,'力格 462','郴侩 462',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (485,null,'力格 463','郴侩 463',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (486,null,'力格 464','郴侩 464',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (487,null,'力格 465','郴侩 465',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (488,null,'力格 466','郴侩 466',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (489,null,'力格 467','郴侩 467',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (490,null,'力格 468','郴侩 468',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (491,null,'力格 469','郴侩 469',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (492,null,'力格 470','郴侩 470',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (493,null,'力格 471','郴侩 471',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (494,null,'力格 472','郴侩 472',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (495,null,'力格 473','郴侩 473',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (496,null,'力格 474','郴侩 474',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (497,null,'力格 475','郴侩 475',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (498,null,'力格 476','郴侩 476',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (499,null,'力格 477','郴侩 477',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (500,null,'力格 478','郴侩 478',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (501,null,'力格 479','郴侩 479',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (502,null,'力格 480','郴侩 480',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (503,null,'力格 481','郴侩 481',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (504,null,'力格 482','郴侩 482',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (505,null,'力格 483','郴侩 483',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (506,null,'力格 484','郴侩 484',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (507,null,'力格 485','郴侩 485',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (508,null,'力格 486','郴侩 486',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (509,null,'力格 487','郴侩 487',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (510,null,'力格 488','郴侩 488',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (511,null,'力格 489','郴侩 489',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (512,null,'力格 490','郴侩 490',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (513,null,'力格 491','郴侩 491',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (514,null,'力格 492','郴侩 492',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (515,null,'力格 493','郴侩 493',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (516,null,'力格 494','郴侩 494',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (517,null,'力格 495','郴侩 495',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (518,null,'力格 496','郴侩 496',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (519,null,'力格 497','郴侩 497',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (520,null,'力格 498','郴侩 498',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (521,null,'力格 499','郴侩 499',2,'Y',to_date('16/03/17','RR/MM/DD'),'Admin');
Insert into HSB.TB_BOARD (IDX,PARENT_IDX,TITLE,CONTENTS,HIT_CNT,DEL_GB,CREA_DTM,CREA_ID) values (522,null,'力格 500','郴侩 500',0,'N',to_date('16/03/17','RR/MM/DD'),'Admin');
REM INSERTING into HSB.TB_FILE
SET DEFINE OFF;
Insert into HSB.TB_FILE (IDX,BOARD_IDX,ORIGINAL_FILE_NAME,STORED_FILE_NAME,FILE_SIZE,CREA_DTM,CREA_ID,DEL_GB) values (4,9,'s.zip','8a575ad74c9741d4b42fd8191a8c75bd.zip',486393,to_date('16/03/16','RR/MM/DD'),'Admin','N');
Insert into HSB.TB_FILE (IDX,BOARD_IDX,ORIGINAL_FILE_NAME,STORED_FILE_NAME,FILE_SIZE,CREA_DTM,CREA_ID,DEL_GB) values (5,10,'老老诀公老瘤_160217_茄惑归.pptx','84546e2fc7334f258be18fc38fae687c.pptx',66856,to_date('16/03/16','RR/MM/DD'),'Admin','N');
Insert into HSB.TB_FILE (IDX,BOARD_IDX,ORIGINAL_FILE_NAME,STORED_FILE_NAME,FILE_SIZE,CREA_DTM,CREA_ID,DEL_GB) values (6,11,'老老诀公老瘤_160211_茄惑归.pptx','42d2523d98734d30a9a8d391e3269c85.pptx',66890,to_date('16/03/16','RR/MM/DD'),'Admin','N');
Insert into HSB.TB_FILE (IDX,BOARD_IDX,ORIGINAL_FILE_NAME,STORED_FILE_NAME,FILE_SIZE,CREA_DTM,CREA_ID,DEL_GB) values (7,11,'老老诀公老瘤_160223_茄惑归.pptx','ea5ef08f73e34afd95e8ee406ed35f06.pptx',66850,to_date('16/03/16','RR/MM/DD'),'Admin','Y');
Insert into HSB.TB_FILE (IDX,BOARD_IDX,ORIGINAL_FILE_NAME,STORED_FILE_NAME,FILE_SIZE,CREA_DTM,CREA_ID,DEL_GB) values (8,11,'老老诀公老瘤_160310_茄惑归.pptx','52665ae3009249fb89aff0b5acf6b1ae.pptx',66764,to_date('16/03/16','RR/MM/DD'),'Admin','N');
Insert into HSB.TB_FILE (IDX,BOARD_IDX,ORIGINAL_FILE_NAME,STORED_FILE_NAME,FILE_SIZE,CREA_DTM,CREA_ID,DEL_GB) values (9,11,'老老诀公老瘤_160222_茄惑归.pptx','1e5364a96e804b8ab1d80bf0ed4f90fa.pptx',66840,to_date('16/03/16','RR/MM/DD'),'Admin','Y');
Insert into HSB.TB_FILE (IDX,BOARD_IDX,ORIGINAL_FILE_NAME,STORED_FILE_NAME,FILE_SIZE,CREA_DTM,CREA_ID,DEL_GB) values (10,11,'老老诀公老瘤_160316_茄惑归.pptx','0379db2f0d744bae93d09e032446daae.pptx',66949,to_date('16/03/16','RR/MM/DD'),'Admin','N');
Insert into HSB.TB_FILE (IDX,BOARD_IDX,ORIGINAL_FILE_NAME,STORED_FILE_NAME,FILE_SIZE,CREA_DTM,CREA_ID,DEL_GB) values (11,12,'老老诀公老瘤_160304_茄惑归.pptx','b02fd73ec78640b5af06505186b8434f.pptx',66867,to_date('16/03/17','RR/MM/DD'),'Admin','Y');
Insert into HSB.TB_FILE (IDX,BOARD_IDX,ORIGINAL_FILE_NAME,STORED_FILE_NAME,FILE_SIZE,CREA_DTM,CREA_ID,DEL_GB) values (12,12,'老老诀公老瘤_160307_茄惑归.pptx','4512ba78c546458298f3d099d71f38d8.pptx',55501,to_date('16/03/17','RR/MM/DD'),'Admin','N');
Insert into HSB.TB_FILE (IDX,BOARD_IDX,ORIGINAL_FILE_NAME,STORED_FILE_NAME,FILE_SIZE,CREA_DTM,CREA_ID,DEL_GB) values (13,12,'老老诀公老瘤_160310_茄惑归.pptx','233bc4286a2445bb949e7eb8916e16d6.pptx',66764,to_date('16/03/17','RR/MM/DD'),'Admin','N');
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
