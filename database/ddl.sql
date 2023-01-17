--------------------------------------------------------
--  File created - Thursday-January-05-2023   
--------------------------------------------------------
DROP TABLE "STUDENT_ATTENDANCE";

DROP TABLE "STUDENT_LOGIN";

DROP TABLE "STU_DATA";

DROP TABLE "SUBJECT";

DROP TABLE "TEACHER_LOGIN";

DROP TABLE "TEACHER__DATA";

--------------------------------------------------------
--  DDL for Table STUDENT_ATTENDANCE
--------------------------------------------------------
CREATE TABLE "STUDENT_ATTENDANCE" (
  "STU_ID" CHAR(8),
  "STU_NAME" VARCHAR2(20),
  "TEACHER_ID" CHAR(10),
  "ATT_DATE" DATE,
  "SUBJECT" VARCHAR2(30),
  "PRESENT" NUMBER(1, 0)
);

--------------------------------------------------------
--  DDL for Table STUDENT_LOGIN
--------------------------------------------------------
CREATE TABLE "STUDENT_LOGIN" (
  "ROLL_NO" CHAR(8),
  "PASSWORD" VARCHAR2(16)
);

--------------------------------------------------------
--  DDL for Table STU_DATA
--------------------------------------------------------
CREATE TABLE "STU_DATA" (
  "ROLL_NO" CHAR(8),
  "NAME" VARCHAR2(20),
  "BRANCH" VARCHAR2(40),
  "SECTION" NUMBER(1, 0),
  "EMAIL" VARCHAR2(30),
  "PHONE" NUMBER
);

--------------------------------------------------------
--  DDL for Table SUBJECT
--------------------------------------------------------
CREATE TABLE "SUBJECT" (
  "SUBJECT_ID" VARCHAR2(10),
  "SUBJECT_NAME" VARCHAR2(30)
);

--------------------------------------------------------
--  DDL for Table TEACHER_LOGIN
--------------------------------------------------------
CREATE TABLE "TEACHER_LOGIN" (
  "TEACHER_ID" CHAR(10),
  "PASSWORD" VARCHAR2(16)
);

--------------------------------------------------------
--  DDL for Table TEACHER__DATA
--------------------------------------------------------
CREATE TABLE "TEACHER__DATA" (
  "TEACHER_ID" CHAR(10),
  "NAME" VARCHAR2(20),
  "SUBJECT_ID" VARCHAR2(10),
  "SUBJECT" VARCHAR2(30),
  "EMAIL" VARCHAR2(30),
  "PHONE" NUMBER
);

--------------------------------------------------------
--  DDL for Index SYS_C007483
--------------------------------------------------------
CREATE UNIQUE INDEX "SYS_C007483" ON "STUDENT_LOGIN" ("ROLL_NO");

--------------------------------------------------------
--  DDL for Index SYS_C007458
--------------------------------------------------------
CREATE UNIQUE INDEX "SYS_C007458" ON "STU_DATA" ("ROLL_NO");

--------------------------------------------------------
--  DDL for Index SYS_C007490
--------------------------------------------------------
CREATE UNIQUE INDEX "SYS_C007490" ON "STU_DATA" ("EMAIL");

--------------------------------------------------------
--  DDL for Index SYS_C007491
--------------------------------------------------------
CREATE UNIQUE INDEX "SYS_C007491" ON "STU_DATA" ("PHONE");

--------------------------------------------------------
--  DDL for Index SYS_C007517
--------------------------------------------------------
CREATE UNIQUE INDEX "SYS_C007517" ON "SUBJECT" ("SUBJECT_ID");

--------------------------------------------------------
--  DDL for Index SYS_C007518
--------------------------------------------------------
CREATE UNIQUE INDEX "SYS_C007518" ON "SUBJECT" ("SUBJECT_NAME");

--------------------------------------------------------
--  DDL for Index SYS_C007479
--------------------------------------------------------
CREATE UNIQUE INDEX "SYS_C007479" ON "TEACHER_LOGIN" ("TEACHER_ID");

--------------------------------------------------------
--  DDL for Index SYS_C007459
--------------------------------------------------------
CREATE UNIQUE INDEX "SYS_C007459" ON "TEACHER__DATA" ("TEACHER_ID");

--------------------------------------------------------
--  DDL for Index SYS_C007493
--------------------------------------------------------
CREATE UNIQUE INDEX "SYS_C007493" ON "TEACHER__DATA" ("EMAIL");

--------------------------------------------------------
--  DDL for Index SYS_C007495
--------------------------------------------------------
CREATE UNIQUE INDEX "SYS_C007495" ON "TEACHER__DATA" ("PHONE");

---------------------------------------------------------
--  Constraints for Table STUDENT_LOGIN
--------------------------------------------------------
ALTER TABLE
  "STUDENT_LOGIN"
ADD
  PRIMARY KEY ("ROLL_NO") ENABLE;

ALTER TABLE
  "STUDENT_LOGIN"
MODIFY
  ("PASSWORD" NOT NULL ENABLE);

--------------------------------------------------------
--  Constraints for Table STU_DATA
--------------------------------------------------------
ALTER TABLE
  "STU_DATA"
MODIFY
  ("PHONE" NOT NULL ENABLE);

ALTER TABLE
  "STU_DATA"
MODIFY
  ("EMAIL" NOT NULL ENABLE);

ALTER TABLE
  "STU_DATA"
MODIFY
  ("SECTION" NOT NULL ENABLE);

ALTER TABLE
  "STU_DATA"
MODIFY
  ("BRANCH" NOT NULL ENABLE);

ALTER TABLE
  "STU_DATA"
MODIFY
  ("NAME" NOT NULL ENABLE);

ALTER TABLE
  "STU_DATA"
ADD
  UNIQUE ("PHONE") ENABLE;

ALTER TABLE
  "STU_DATA"
ADD
  UNIQUE ("EMAIL") ENABLE;

ALTER TABLE
  "STU_DATA"
ADD
  PRIMARY KEY ("ROLL_NO") ENABLE;

--------------------------------------------------------
--  Constraints for Table SUBJECT
--------------------------------------------------------
ALTER TABLE
  "SUBJECT"
ADD
  UNIQUE ("SUBJECT_NAME") ENABLE;

ALTER TABLE
  "SUBJECT"
ADD
  PRIMARY KEY ("SUBJECT_ID") ENABLE;

ALTER TABLE
  "SUBJECT"
MODIFY
  ("SUBJECT_NAME" NOT NULL ENABLE);

--------------------------------------------------------
--  Constraints for Table TEACHER_LOGIN
--------------------------------------------------------
ALTER TABLE
  "TEACHER_LOGIN"
ADD
  PRIMARY KEY ("TEACHER_ID") ENABLE;

ALTER TABLE
  "TEACHER_LOGIN"
MODIFY
  ("PASSWORD" NOT NULL ENABLE);

--------------------------------------------------------
--  Constraints for Table TEACHER__DATA
--------------------------------------------------------
ALTER TABLE
  "TEACHER__DATA"
MODIFY
  ("SUBJECT" NOT NULL ENABLE);

ALTER TABLE
  "TEACHER__DATA"
MODIFY
  ("SUBJECT_ID" NOT NULL ENABLE);

ALTER TABLE
  "TEACHER__DATA"
MODIFY
  ("NAME" NOT NULL ENABLE);

ALTER TABLE
  "TEACHER__DATA"
ADD
  UNIQUE ("PHONE") ENABLE;

ALTER TABLE
  "TEACHER__DATA"
MODIFY
  ("PHONE" NOT NULL ENABLE);

ALTER TABLE
  "TEACHER__DATA"
ADD
  UNIQUE ("EMAIL") ENABLE;

ALTER TABLE
  "TEACHER__DATA"
MODIFY
  ("EMAIL" NOT NULL ENABLE);

ALTER TABLE
  "TEACHER__DATA"
ADD
  UNIQUE ("SUBJECT_ID") DISABLE;

ALTER TABLE
  "TEACHER__DATA"
ADD
  PRIMARY KEY ("TEACHER_ID") ENABLE;

--------------------------------------------------------
--  Ref Constraints for Table STUDENT_ATTENDANCE
--------------------------------------------------------
ALTER TABLE
  "STUDENT_ATTENDANCE"
ADD
  FOREIGN KEY ("STU_ID") REFERENCES "STU_DATA" ("ROLL_NO") ENABLE;

ALTER TABLE
  "STUDENT_ATTENDANCE"
ADD
  FOREIGN KEY ("TEACHER_ID") REFERENCES "TEACHER__DATA" ("TEACHER_ID") ENABLE;

--------------------------------------------------------
--  Ref Constraints for Table STUDENT_LOGIN
--------------------------------------------------------
ALTER TABLE
  "STUDENT_LOGIN"
ADD
  FOREIGN KEY ("ROLL_NO") REFERENCES "STU_DATA" ("ROLL_NO") ENABLE;

--------------------------------------------------------
--  Ref Constraints for Table TEACHER_LOGIN
--------------------------------------------------------
ALTER TABLE
  "TEACHER_LOGIN"
ADD
  FOREIGN KEY ("TEACHER_ID") REFERENCES "TEACHER__DATA" ("TEACHER_ID") ENABLE;

--------------------------------------------------------
--  Ref Constraints for Table TEACHER__DATA
--------------------------------------------------------
ALTER TABLE
  "TEACHER__DATA"
ADD
  FOREIGN KEY ("SUBJECT_ID") REFERENCES "SUBJECT" ("SUBJECT_ID") ENABLE;