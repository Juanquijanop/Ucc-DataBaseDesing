/*==============================================================*/
/* DBMS name:      PostgreSQL                                   */
/* Created on:     11/22/2023 1:12:38 PM                        */
/*==============================================================*/

create sequence GENERAL_SEQUENCE
    increment by 1
    start with 1;

/*==============================================================*/
/* Table: ADDRESSE                                              */
/*==============================================================*/
create table ADDRESSE  (
   ID_ADDRESS           SERIAL                          not null,
   ID_PERSON_CLIENT     INTEGER,
   ADDRESS              VARCHAR(45),
   constraint PK_ADDRESSE primary key (ID_ADDRESS)
);

/*==============================================================*/
/* Table: ADMINISTRATOR                                         */
/*==============================================================*/
create table ADMINISTRATOR  (
   ID_ADMINISTRATOR     SERIAL                          not null,
   ADMIN                INTEGER,
   constraint PK_ADMINISTRATOR primary key (ID_ADMINISTRATOR)
);

/*==============================================================*/
/* Table: CATEGORY                                              */
/*==============================================================*/
create table CATEGORY  (
   ID_CATEGORY          SERIAL                          not null,
   NAME                 VARCHAR(45),
   constraint PK_CATEGORY primary key (ID_CATEGORY)
);

/*==============================================================*/
/* Table: CITY                                                  */
/*==============================================================*/
create table CITY  (
   ID_CITY              SERIAL                          not null,
   ID_DEPARTMENT        INTEGER,
   NAME                 VARCHAR(45),
   constraint PK_CITY primary key (ID_CITY)
);

/*==============================================================*/
/* Table: COUNTRY                                               */
/*==============================================================*/
create table COUNTRY  (
   ID_COUNTRY           SERIAL                          not null,
   NAME                 VARCHAR(45),
   constraint PK_COUNTRY primary key (ID_COUNTRY)
);

/*==============================================================*/
/* Table: DEPARTMENT                                            */
/*==============================================================*/
create table DEPARTMENT  (
   ID_DEPARTMENT        SERIAL                          not null,
   ID_COUNTRY           INTEGER,
   NAME                 VARCHAR(45)                     not null,
   constraint PK_DEPARTMENT primary key (ID_DEPARTMENT)
);

/*==============================================================*/
/* Table: DETAILS                                               */
/*==============================================================*/
create table DETAILS  (
   ID_DETAILS           SERIAL                          not null,
   PACKAGE_HEIGTH       INTEGER,
   PACKAGE_LENGTH       INTEGER,
   KILOMETERS           INTEGER,
   VOLUME_PRICE         INTEGER,
   WEIGTH_PRICE         INTEGER,
   KILOMETERS_PRICE     INTEGER,
   TOTAL_PRICE          INTEGER,
   constraint PK_DETAILS primary key (ID_DETAILS)
);

/*==============================================================*/
/* Table: DRIVER_LICENSE                                        */
/*==============================================================*/
create table DRIVER_LICENSE  (
   ID_DRIVER_LICENSE    SERIAL                          not null,
   EXPEDITION_DATE      TIMESTAMP,
   EXPIRATION_DATE      TIMESTAMP,
   FRONT_IMG            VARCHAR(255),
   REAR_IMG             VARCHAR(255),
   constraint PK_DRIVER_LICENSE primary key (ID_DRIVER_LICENSE)
);

/*==============================================================*/
/* Table: EMAIL                                                 */
/*==============================================================*/
create table EMAIL  (
   ID_EMAIL             SERIAL                          not null,
   ID_PERSON_CLIENT     INTEGER,
   EMAIL                VARCHAR(45),
   constraint PK_EMAIL primary key (ID_EMAIL)
);

/*==============================================================*/
/* Table: GUIA                                                  */
/*==============================================================*/
create table GUIA  (
   ID_GUIA              SERIAL                          not null,
   ID_DETAILS           INTEGER,
   ID_ORIGIN_CITY       INTEGER,
   ID_DESTINATION_CITY  INTEGER,
   ID_PRODUCT           INTEGER,
   ID_RECEIVER          INTEGER,
   ID_SENDER            INTEGER,
   GENERATION_DATE      TIMESTAMP,
   ADITIONAL_DETAILS    VARCHAR(255),
   constraint PK_GUIA primary key (ID_GUIA)
);

/*==============================================================*/
/* Table: IDENTIFICATION_TYPE                                   */
/*==============================================================*/
create table IDENTIFICATION_TYPE  (
   ID_IDENTIFICATION_TYPE SERIAL                          not null,
   NAME                 VARCHAR(45),
   constraint PK_IDENTIFICATION_TYPE primary key (ID_IDENTIFICATION_TYPE)
);

/*==============================================================*/
/* Table: INVOICE                                               */
/*==============================================================*/
create table INVOICE  (
   ID_INVOICE           SERIAL                          not null,
   ID_GUIA              INTEGER,
   ID_USER              INTEGER,
   constraint PK_INVOICE primary key (ID_INVOICE)
);

/*==============================================================*/
/* Table: PERSON_CLIENT                                         */
/*==============================================================*/
create table PERSON_CLIENT  (
   ID_PERSON_CLIENT     SERIAL                          not null,
   ID_PERSON_IDENTIFICATION INTEGER,
   NAME                 VARCHAR(45),
   LAST_NAME            VARCHAR(45),
   BIRTHDATE            TIMESTAMP,
   constraint PK_PERSON_CLIENT primary key (ID_PERSON_CLIENT)
);

/*==============================================================*/
/* Table: PERSON_COLABORATOR                                    */
/*==============================================================*/
create table PERSON_COLABORATOR  (
   ID_PERSON_COLABORATOR SERIAL                          not null,
   ID_PERSON_IDENTIFICATION INTEGER,
   ID_DRIVER_LICENSE    INTEGER,
   NAME                 VARCHAR(45),
   SEX                  VARCHAR(45),
   CITY_OF_BIRTH        VARCHAR(45),
   LAST_NAME            VARCHAR(45),
   BLOOD_TYPE           VARCHAR(45),
   HEIGTH               INTEGER,
   BIRTHDAY             TIMESTAMP,
   constraint PK_PERSON_COLABORATOR primary key (ID_PERSON_COLABORATOR)
);

/*==============================================================*/
/* Table: PERSON_IDENTIFICATION                                 */
/*==============================================================*/
create table PERSON_IDENTIFICATION  (
   ID_PERSON_IDENTIFICATION SERIAL                          not null,
   ID_IDENTIFICATION_TYPE INTEGER,
   "NUMBER"             INTEGER,
   FRONT_IMG            VARCHAR(255),
   REAR_IMG             VARCHAR(255),
   constraint PK_PERSON_IDENTIFICATION primary key (ID_PERSON_IDENTIFICATION)
);

/*==============================================================*/
/* Table: PHONE_NUMBER                                          */
/*==============================================================*/
create table PHONE_NUMBER  (
   ID_PHONE_NUMBER      SERIAL                          not null,
   ID_PERSON_CLIENT     INTEGER,
   "NUMBER"             INTEGER,
   constraint PK_PHONE_NUMBER primary key (ID_PHONE_NUMBER)
);

/*==============================================================*/
/* Table: PRICING_KILOMETERS                                    */
/*==============================================================*/
create table PRICING_KILOMETERS  (
   ID_PRICING_KILOMETERS SERIAL                          not null,
   KILOMETERS           INTEGER,
   CURRENT_PRICE        INTEGER,
   constraint PK_PRICING_KILOMETERS primary key (ID_PRICING_KILOMETERS)
);

/*==============================================================*/
/* Table: PRICING_KILOMETERS_LOGS                               */
/*==============================================================*/
create table PRICING_KILOMETERS_LOGS  (
   ID_PRICING_KILOMETERS_LOGS SERIAL                          not null,
   ID_PRICING_KILOMETERS INTEGER,
   DATE_REGISTRY        TIMESTAMP,
   constraint PK_PRICING_KILOMETERS_LOGS primary key (ID_PRICING_KILOMETERS_LOGS)
);

/*==============================================================*/
/* Table: PRICING_VOLUME                                        */
/*==============================================================*/
create table PRICING_VOLUME  (
   ID_PRICING_VOLUME    SERIAL                          not null,
   VOLUME               INTEGER,
   CURRENT_PRICE        INTEGER,
   constraint PK_PRICING_VOLUME primary key (ID_PRICING_VOLUME)
);

/*==============================================================*/
/* Table: PRICING_VOLUME_LOGS                                   */
/*==============================================================*/
create table PRICING_VOLUME_LOGS  (
   ID_PRICING_VOLUME_LOGS SERIAL                          not null,
   ID_PRICING_VOLUME    INTEGER,
   DATE_REGISTRY        TIMESTAMP,
   constraint PK_PRICING_VOLUME_LOGS primary key (ID_PRICING_VOLUME_LOGS)
);
