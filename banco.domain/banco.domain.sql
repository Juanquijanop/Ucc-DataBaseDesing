/*==============================================================*/
/* DBMS name:      ORACLE Version 10gR2                         */
/* Created on:     10/12/2023 10:25:44 PM                       */
/*==============================================================*/


/*==============================================================*/
/* Table: ACCOUNT                                               */
/*==============================================================*/
CREATE TABLE ACCOUNT  (
   ID                   NUMERIC                         NOT NULL,
   SALDO                DECIMAL(12, 2),
   IP                   VARCHAR(10),
   FECHA_CREACION       TIMESTAMP WITH TIME ZONE,
   FECHA_MODIFICACION   TIMESTAMP WITH TIME ZONE,
   CONSTRAINT PK_ACCOUNT PRIMARY KEY (ID)
);

/*==============================================================*/
/* Table: ACCOUNT_LOG                                           */
/*==============================================================*/
CREATE TABLE ACCOUNT_LOG  (
   ID_ACCOUNT_LOG       NUMERIC(20)                     NOT NULL,
   ID                   NUMERIC,
   SALDO                DECIMAL(12, 2),
   IP                   VARCHAR(10),
   FECHA_CREACION       TIMESTAMP WITH TIME ZONE,
   FECHA_MODIFICACION   TIMESTAMP WITH TIME ZONE,
   CONSTRAINT PK_ACCOUNT_LOG PRIMARY KEY (ID_ACCOUNT_LOG)
);

ALTER TABLE ACCOUNT_LOG
   ADD CONSTRAINT FK_ACCOUNT__FK_ACCOUN_ACCOUNT FOREIGN KEY (ID)
      REFERENCES ACCOUNT (ID);

