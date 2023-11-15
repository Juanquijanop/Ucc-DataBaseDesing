/*==============================================================*/
/* DBMS name:      ORACLE Version 10gR2                         */
/* Created on:     10/17/2023 12:02:02 AM                       */
/*==============================================================*/


/*==============================================================*/
/* Table: BOOK                                                  */
/*==============================================================*/
CREATE TABLE BOOK  (
   ID_BOOK              NUMERIC                         NOT NULL,
   ID_FLIGHT            NUMERIC,
   ID_FARE_TYPE         NUMERIC,
   DATE_BOOK            TIMESTAMP,
   VALUE                NUMBER(13,2),
   CONSTRAINT PK_BOOK PRIMARY KEY (ID_BOOK)
);

/*==============================================================*/
/* Table: BOOK_LOGS                                             */
/*==============================================================*/
CREATE TABLE BOOK_LOGS  (
   ID_BOOK_LOG          NUMERIC                         NOT NULL,
   ID_BOOK              NUMERIC,
   ID_FLIGHT            NUMERIC,
   DATE_BOOK            TIMESTAMP,
   ORIGIN               VARCHAR(5),
   DESTINATION          VARCHAR(5),
   OCUPACITY            NUMERIC,
   CONSTRAINT PK_BOOK_LOGS PRIMARY KEY (ID_BOOK_LOG)
);

/*==============================================================*/
/* Table: CLIENT                                                */
/*==============================================================*/
CREATE TABLE CLIENT  (
   ID_CLIENT            NUMERIC                         NOT NULL,
   ID_BOOK              NUMERIC,
   DNI                  VARCHAR2(12),
   NAME                 VARCHAR2(24),
   LAST_NAME            VARCHAR2(24),
   BIRTHDATE            TIMESTAMP,
   GENDER               VARCHAR(2),
   PHONE                NUMERIC(14),
   EMAIL                VARCHAR(32),
   CONSTRAINT PK_CLIENT PRIMARY KEY (ID_CLIENT)
);

/*==============================================================*/
/* Table: FARE_TYPE                                             */
/*==============================================================*/
CREATE TABLE FARE_TYPE  (
   ID_FARE_TYPE         NUMERIC                         NOT NULL,
   NAME                 VARCHAR(15),
   DESCRIPTION          VARCHAR(120),
   CONSTRAINT PK_FARE_TYPE PRIMARY KEY (ID_FARE_TYPE)
);

/*==============================================================*/
/* Table: FLIGHT                                                */
/*==============================================================*/
CREATE TABLE FLIGHT  (
   ID_FLIGHT            NUMERIC                         NOT NULL,
   ORIGIN               VARCHAR(5),
   DESTINATION          VARCHAR(5),
   OCUPACITY            NUMERIC,
   CONSTRAINT PK_FLIGHT PRIMARY KEY (ID_FLIGHT)
);

/*==============================================================*/
/* Table: FLIGHT_SEATS_BOOK                                     */
/*==============================================================*/
CREATE TABLE FLIGHT_SEATS_BOOK  (
   ID_SEAT              NUMERIC                         NOT NULL,
   ID_FLIGHT            NUMERIC,
   ID_BOOK              NUMERIC,
   AVAILABLE            BOOLEAN,
   CONSTRAINT PK_FLIGHT_SEATS_BOOK PRIMARY KEY (ID_SEAT)
);

ALTER TABLE BOOK
   ADD CONSTRAINT FK_BOOK_FK_BOOK_R_FLIGHT FOREIGN KEY (ID_FLIGHT)
      REFERENCES FLIGHT (ID_FLIGHT);

ALTER TABLE BOOK
   ADD CONSTRAINT FK_BOOK_FK_FARE_T_FARE_TYP FOREIGN KEY (ID_FARE_TYPE)
      REFERENCES FARE_TYPE (ID_FARE_TYPE);

ALTER TABLE BOOK_LOGS
   ADD CONSTRAINT FK_BOOK_LOG_FK_BOOK_L_BOOK FOREIGN KEY (ID_BOOK)
      REFERENCES BOOK (ID_BOOK);

ALTER TABLE CLIENT
   ADD CONSTRAINT FK_CLIENT_FK_CLIENT_BOOK FOREIGN KEY (ID_BOOK)
      REFERENCES BOOK (ID_BOOK);

ALTER TABLE FLIGHT_SEATS_BOOK
   ADD CONSTRAINT FK_FLIGHT_S_REFERENCE_FLIGHT FOREIGN KEY (ID_FLIGHT)
      REFERENCES FLIGHT (ID_FLIGHT);

ALTER TABLE FLIGHT_SEATS_BOOK
   ADD CONSTRAINT FK_FLIGHT_S_REFERENCE_BOOK FOREIGN KEY (ID_BOOK)
      REFERENCES BOOK (ID_BOOK);

