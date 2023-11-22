/*==============================================================*/
/* DBMS name:      ORACLE Version 10g                           */
/* Created on:     11/22/2023 9:34:38 PM                        */
/*==============================================================*/


create sequence GENERAL_SEQUENCE
increment by 1
start with 1;

/*==============================================================*/
/* Table: ADDRESSE                                              */
/*==============================================================*/
create table ADDRESSE  (
   ID_ADDRESS           NUMBER                          not null,
   ID_PERSON_CLIENT     NUMBER,
   ADDRESS              VARCHAR(45),
   constraint PK_ADDRESSE primary key (ID_ADDRESS)
);

/*==============================================================*/
/* Table: ADMINISTRATOR                                         */
/*==============================================================*/
create table ADMINISTRATOR  (
   ID_ADMINISTRATOR     NUMBER                          not null,
   ADMIN                NUMBER,
   constraint PK_ADMINISTRATOR primary key (ID_ADMINISTRATOR)
);

/*==============================================================*/
/* Table: CATEGORY                                              */
/*==============================================================*/
create table CATEGORY  (
   ID_CATEGORY          NUMBER                          not null,
   NAME                 VARCHAR(45),
   constraint PK_CATEGORY primary key (ID_CATEGORY)
);

/*==============================================================*/
/* Table: CITY                                                  */
/*==============================================================*/
create table CITY  (
   ID_CITY              NUMBER                          not null,
   ID_DEPARTMENT        NUMBER,
   NAME                 VARCHAR(45),
   constraint PK_CITY primary key (ID_CITY)
);

/*==============================================================*/
/* Table: COUNTRY                                               */
/*==============================================================*/
create table COUNTRY  (
   ID_COUNTRY           NUMBER                          not null,
   NAME                 VARCHAR(45),
   constraint PK_COUNTRY primary key (ID_COUNTRY)
);

/*==============================================================*/
/* Table: DEPARTMENT                                            */
/*==============================================================*/
create table DEPARTMENT  (
   ID_DEPARTMENT        NUMBER                          not null,
   ID_COUNTRY           NUMBER,
   NAME                 VARCHAR(45)                     not null,
   constraint PK_DEPARTMENT primary key (ID_DEPARTMENT)
);

/*==============================================================*/
/* Table: DETAILS                                               */
/*==============================================================*/
create table DETAILS  (
   ID_DETAILS           NUMBER                          not null,
   PACKAGE_HEIGTH       NUMBER,
   PACKAGE_LENGTH       NUMBER,
   KILOMETERS           NUMBER,
   VOLUME_PRICE         NUMBER,
   WEIGTH_PRICE         NUMBER,
   KILOMETERS_PRICE     NUMBER,
   TOTAL_PRICE          NUMBER,
   constraint PK_DETAILS primary key (ID_DETAILS)
);

/*==============================================================*/
/* Table: DRIVER_LICENSE                                        */
/*==============================================================*/
create table DRIVER_LICENSE  (
   ID_DRIVER_LICENSE    NUMBER                          not null,
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
   ID_EMAIL             NUMBER                          not null,
   ID_PERSON_CLIENT     NUMBER,
   EMAIL                VARCHAR(45),
   constraint PK_EMAIL primary key (ID_EMAIL)
);

/*==============================================================*/
/* Table: GUIA                                                  */
/*==============================================================*/
create table GUIA  (
   ID_GUIA              NUMBER                          not null,
   ID_DETAILS           NUMBER,
   ID_ORIGIN_CITY       NUMBER,
   ID_DESTINATION_CITY  NUMBER,
   ID_PRODUCT           NUMBER,
   ID_RECEIVER          NUMBER,
   ID_SENDER            NUMBER,
   GENERATION_DATE      TIMESTAMP,
   ADITIONAL_DETAILS    VARCHAR(255),
   constraint PK_GUIA primary key (ID_GUIA)
);

/*==============================================================*/
/* Table: IDENTIFICATION_TYPE                                   */
/*==============================================================*/
create table IDENTIFICATION_TYPE  (
   ID_IDENTIFICATION_TYPE NUMBER                          not null,
   NAME                 VARCHAR(45),
   constraint PK_IDENTIFICATION_TYPE primary key (ID_IDENTIFICATION_TYPE)
);

/*==============================================================*/
/* Table: INVOICE                                               */
/*==============================================================*/
create table INVOICE  (
   ID_INVOICE           NUMBER                          not null,
   ID_GUIA              NUMBER,
   ID_USER              NUMBER,
   constraint PK_INVOICE primary key (ID_INVOICE)
);

/*==============================================================*/
/* Table: PERSON_CLIENT                                         */
/*==============================================================*/
create table PERSON_CLIENT  (
   ID_PERSON_CLIENT     NUMBER                          not null,
   ID_PERSON_IDENTIFICATION NUMBER,
   NAME                 VARCHAR(45),
   LAST_NAME            VARCHAR(45),
   BIRTHDATE            TIMESTAMP,
   constraint PK_PERSON_CLIENT primary key (ID_PERSON_CLIENT)
);

/*==============================================================*/
/* Table: PERSON_COLABORATOR                                    */
/*==============================================================*/
create table PERSON_COLABORATOR  (
   ID_PERSON_COLABORATOR NUMBER                          not null,
   ID_PERSON_IDENTIFICATION NUMBER,
   ID_DRIVER_LICENSE    NUMBER,
   NAME                 VARCHAR(45),
   SEX                  VARCHAR(45),
   CITY_OF_BIRTH        VARCHAR(45),
   LAST_NAME            VARCHAR(45),
   BLOOD_TYPE           VARCHAR(45),
   HEIGTH               NUMBER,
   BIRTHDAY             TIMESTAMP,
   constraint PK_PERSON_COLABORATOR primary key (ID_PERSON_COLABORATOR)
);

/*==============================================================*/
/* Table: PERSON_IDENTIFICATION                                 */
/*==============================================================*/
create table PERSON_IDENTIFICATION  (
   ID_PERSON_IDENTIFICATION NUMBER                          not null,
   ID_IDENTIFICATION_TYPE NUMBER,
   "NUMBER"             NUMBER,
   FRONT_IMG            VARCHAR(255),
   REAR_IMG             VARCHAR(255),
   constraint PK_PERSON_IDENTIFICATION primary key (ID_PERSON_IDENTIFICATION)
);

/*==============================================================*/
/* Table: PHONE_NUMBER                                          */
/*==============================================================*/
create table PHONE_NUMBER  (
   ID_PHONE_NUMBER      NUMBER                          not null,
   ID_PERSON_CLIENT     NUMBER,
   "NUMBER"             NUMBER,
   constraint PK_PHONE_NUMBER primary key (ID_PHONE_NUMBER)
);

/*==============================================================*/
/* Table: PRICING_KILOMETERS                                    */
/*==============================================================*/
create table PRICING_KILOMETERS  (
   ID_PRICING_KILOMETERS NUMBER                          not null,
   KILOMETERS           NUMBER,
   CURRENT_PRICE        NUMBER,
   constraint PK_PRICING_KILOMETERS primary key (ID_PRICING_KILOMETERS)
);

/*==============================================================*/
/* Table: PRICING_KILOMETERS_LOGS                               */
/*==============================================================*/
create table PRICING_KILOMETERS_LOGS  (
   ID_PRICING_KILOMETERS_LOGS NUMBER                          not null,
   ID_PRICING_KILOMETERS NUMBER,
   DATE_REGISTRY        TIMESTAMP,
   constraint PK_PRICING_KILOMETERS_LOGS primary key (ID_PRICING_KILOMETERS_LOGS)
);

/*==============================================================*/
/* Table: PRICING_VOLUME                                        */
/*==============================================================*/
create table PRICING_VOLUME  (
   ID_PRICING_VOLUME    NUMBER                          not null,
   VOLUME               NUMBER,
   CURRENT_PRICE        NUMBER,
   constraint PK_PRICING_VOLUME primary key (ID_PRICING_VOLUME)
);

/*==============================================================*/
/* Table: PRICING_VOLUME_LOGS                                   */
/*==============================================================*/
create table PRICING_VOLUME_LOGS  (
   ID_PRICING_VOLUME_LOGS NUMBER                          not null,
   ID_PRICING_VOLUME    NUMBER,
   DATE_REGISTRY        TIMESTAMP,
   constraint PK_PRICING_VOLUME_LOGS primary key (ID_PRICING_VOLUME_LOGS)
);

/*==============================================================*/
/* Table: PRICING_WEIGTH                                        */
/*==============================================================*/
create table PRICING_WEIGTH  (
   ID_PRICING_WEIGTH    NUMBER                          not null,
   WEIGTH               NUMBER,
   CURRENT_PRICE        NUMBER,
   constraint PK_PRICING_WEIGTH primary key (ID_PRICING_WEIGTH)
);

/*==============================================================*/
/* Table: PRICING_WEIGTH_LOGS                                   */
/*==============================================================*/
create table PRICING_WEIGTH_LOGS  (
   ID_WEIGTH_LOGS       NUMBER                          not null,
   ID_PRICING_WEIGTH    NUMBER,
   DATE_REGISTRY        TIMESTAMP,
   constraint PK_PRICING_WEIGTH_LOGS primary key (ID_WEIGTH_LOGS)
);

/*==============================================================*/
/* Table: PRODUCT                                               */
/*==============================================================*/
create table PRODUCT  (
   ID_PRODUCT           NUMBER                          not null,
   ID_TYPE_PRODUCT      NUMBER,
   ID_CATEGORY          NUMBER,
   NAME                 VARCHAR(45),
   DESCRIPTION          VARCHAR(45),
   constraint PK_PRODUCT primary key (ID_PRODUCT)
);

/*==============================================================*/
/* Table: TYPE_PRODUCT                                          */
/*==============================================================*/
create table TYPE_PRODUCT  (
   ID_TYPE_PRODUCT      NUMBER                          not null,
   NAME                 VARCHAR(45),
   constraint PK_TYPE_PRODUCT primary key (ID_TYPE_PRODUCT)
);

/*==============================================================*/
/* Table: "USER"                                                */
/*==============================================================*/
create table "USER"  (
   ID_USER              NUMBER                          not null,
   ID_PERSON_COLABORATOR NUMBER,
   ID_PERSON_CLIENT     NUMBER,
   ID_USER_TYPE         NUMBER,
   ID_ADMINISTRATOR     NUMBER,
   USERNAME             VARCHAR(45),
   PASSWORD             VARCHAR(45),
   constraint PK_USER primary key (ID_USER)
);

/*==============================================================*/
/* Table: USER_TYPE                                             */
/*==============================================================*/
create table USER_TYPE  (
   ID_USER_TYPE         NUMBER                          not null,
   TYPE_USER            VARCHAR(45),
   constraint PK_USER_TYPE primary key (ID_USER_TYPE)
);

alter table ADDRESSE
   add constraint FK_ADDRESSE_ADDRESS_P_PERSON_C foreign key (ID_PERSON_CLIENT)
      references PERSON_CLIENT (ID_PERSON_CLIENT);

alter table CITY
   add constraint FK_CITY_CITY_DEPA_DEPARTME foreign key (ID_DEPARTMENT)
      references DEPARTMENT (ID_DEPARTMENT)
      on delete cascade;

alter table DEPARTMENT
   add constraint FK_DEPARTME_DEPARTMEN_COUNTRY foreign key (ID_COUNTRY)
      references COUNTRY (ID_COUNTRY)
      on delete cascade;

alter table EMAIL
   add constraint FK_EMAIL_EMAIL_PER_PERSON_C foreign key (ID_PERSON_CLIENT)
      references PERSON_CLIENT (ID_PERSON_CLIENT);

alter table GUIA
   add constraint FK_GUIA_GUIA_DEST_CITY foreign key (ID_DESTINATION_CITY)
      references CITY (ID_CITY);

alter table GUIA
   add constraint FK_GUIA_GUIA_DETA_DETAILS foreign key (ID_DETAILS)
      references DETAILS (ID_DETAILS);

alter table GUIA
   add constraint FK_GUIA_GUIA_ORIG_CITY foreign key (ID_ORIGIN_CITY)
      references CITY (ID_CITY);

alter table GUIA
   add constraint FK_GUIA_GUIA_PROD_PRODUCT foreign key (ID_PRODUCT)
      references PRODUCT (ID_PRODUCT);

alter table GUIA
   add constraint FK_GUIA_GUIA_RECI_USER foreign key (ID_RECEIVER)
      references "USER" (ID_USER);

alter table GUIA
   add constraint FK_GUIA_GUIA_SEND_USER foreign key (ID_SENDER)
      references "USER" (ID_USER);

alter table INVOICE
   add constraint FK_INVOICE_INVOICE_G_GUIA foreign key (ID_GUIA)
      references GUIA (ID_GUIA);

alter table INVOICE
   add constraint FK_INVOICE_INVOICE_U_USER foreign key (ID_USER)
      references "USER" (ID_USER);

alter table PERSON_CLIENT
   add constraint FK_PERSON_C_PERSON_CL_PERSON_I foreign key (ID_PERSON_IDENTIFICATION)
      references PERSON_IDENTIFICATION (ID_PERSON_IDENTIFICATION);

alter table PERSON_COLABORATOR
   add constraint FK_PERSON_C_PERSON_CO_PERSON_I foreign key (ID_PERSON_IDENTIFICATION)
      references PERSON_IDENTIFICATION (ID_PERSON_IDENTIFICATION);

alter table PERSON_COLABORATOR
   add constraint FK_PERSON_C_PERSON_CO_DRIVER_L foreign key (ID_DRIVER_LICENSE)
      references DRIVER_LICENSE (ID_DRIVER_LICENSE);

alter table PERSON_IDENTIFICATION
   add constraint FK_PERSON_I_DNI_DNI_T_IDENTIFI foreign key (ID_IDENTIFICATION_TYPE)
      references IDENTIFICATION_TYPE (ID_IDENTIFICATION_TYPE);

alter table PHONE_NUMBER
   add constraint FK_PHONE_NU_PHONE_NUM_PERSON_C foreign key (ID_PERSON_CLIENT)
      references PERSON_CLIENT (ID_PERSON_CLIENT);

alter table PRICING_KILOMETERS_LOGS
   add constraint FK_PRICING__PRICING_K_PRICING_ foreign key (ID_PRICING_KILOMETERS)
      references PRICING_KILOMETERS (ID_PRICING_KILOMETERS);

alter table PRICING_VOLUME_LOGS
   add constraint FK_PRICING__PRICING_V_PRICING_ foreign key (ID_PRICING_VOLUME)
      references PRICING_VOLUME (ID_PRICING_VOLUME);

alter table PRICING_WEIGTH_LOGS
   add constraint FK_PRICING__PRICING_W_PRICING_ foreign key (ID_PRICING_WEIGTH)
      references PRICING_WEIGTH (ID_PRICING_WEIGTH);

alter table PRODUCT
   add constraint FK_PRODUCT_PRODUCT_C_CATEGORY foreign key (ID_CATEGORY)
      references CATEGORY (ID_CATEGORY);

alter table PRODUCT
   add constraint FK_PRODUCT_PRODUCT_T_TYPE_PRO foreign key (ID_TYPE_PRODUCT)
      references TYPE_PRODUCT (ID_TYPE_PRODUCT);

alter table "USER"
   add constraint FK_USER_USER_ADMI_ADMINIST foreign key (ID_ADMINISTRATOR)
      references ADMINISTRATOR (ID_ADMINISTRATOR);

alter table "USER"
   add constraint FK_USER_USER_PERS_PER_CLI foreign key (ID_PERSON_CLIENT)
      references PERSON_CLIENT (ID_PERSON_CLIENT);

alter table "USER"
   add constraint FK_USER_USER_PERS_PER_COLA foreign key (ID_PERSON_COLABORATOR)
      references PERSON_COLABORATOR (ID_PERSON_COLABORATOR);

alter table "USER"
   add constraint FK_USER_USER_USER_USER_TYP foreign key (ID_USER_TYPE)
      references USER_TYPE (ID_USER_TYPE);

