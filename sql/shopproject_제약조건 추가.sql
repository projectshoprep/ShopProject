--------------------------------------------------------
--  颇老捞 积己凳 - 格夸老-9岿-08-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CART
--------------------------------------------------------

  CREATE TABLE "CART" 
   (	"PRODUCTNO" VARCHAR2(200 BYTE), 
	"MEMBERID" VARCHAR2(200 BYTE), 
	"GUESTTELNO" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table COLOR
--------------------------------------------------------

  CREATE TABLE "COLOR" 
   (	"COLORNO" VARCHAR2(200 BYTE), 
	"PRODUCTNO" VARCHAR2(200 BYTE), 
	"COLORNAME" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table GUEST
--------------------------------------------------------

  CREATE TABLE "GUEST" 
   (	"GUESTTELNO" VARCHAR2(200 BYTE), 
	"GUESTPW" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table GUESTORDER
--------------------------------------------------------

  CREATE TABLE "GUESTORDER" 
   (	"GUESTORDERNO" VARCHAR2(200 BYTE), 
	"PRODUCTNO" VARCHAR2(200 BYTE), 
	"ORDERQUANTITY" NUMBER, 
	"PRICESUM" NUMBER, 
	"POSTNO" VARCHAR2(200 BYTE), 
	"ADDRESS" VARCHAR2(200 BYTE), 
	"ADDRESSDETAIL" VARCHAR2(200 BYTE), 
	"GUESTTELNO" VARCHAR2(200 BYTE), 
	"GUESTNAME" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table GUESTREFUND
--------------------------------------------------------

  CREATE TABLE "GUESTREFUND" 
   (	"REFUNDNO" VARCHAR2(200 BYTE), 
	"GUESTORDERNO" VARCHAR2(200 BYTE), 
	"REFUNDREASON" VARCHAR2(200 BYTE), 
	"REASONPHOTO" VARCHAR2(200 BYTE), 
	"GUESTTELNO" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table MANAGER
--------------------------------------------------------

  CREATE TABLE "MANAGER" 
   (	"MANAGERID" VARCHAR2(30 BYTE), 
	"PW" VARCHAR2(30 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "MEMBER" 
   (	"MEMBERID" VARCHAR2(200 BYTE), 
	"PW" VARCHAR2(200 BYTE), 
	"MEMBERNAME" VARCHAR2(200 BYTE), 
	"ADDRESS" VARCHAR2(200 BYTE), 
	"BIRTHDATE" DATE, 
	"MEMBERTELNO" VARCHAR2(200 BYTE), 
	"WITHDRAW" VARCHAR2(200 BYTE), 
	"GENDER" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table MEMBERORDER
--------------------------------------------------------

  CREATE TABLE "MEMBERORDER" 
   (	"MEMBERORDERNO" VARCHAR2(200 BYTE), 
	"PRODUCTNO" VARCHAR2(200 BYTE), 
	"MEMBERID" VARCHAR2(200 BYTE), 
	"ORDERQUANTITY" NUMBER, 
	"PRICESUM" NUMBER, 
	"POSTNO" VARCHAR2(200 BYTE), 
	"ADDRESS" VARCHAR2(200 BYTE), 
	"ADDRESSDETAIL" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table MEMBERREFUND
--------------------------------------------------------

  CREATE TABLE "MEMBERREFUND" 
   (	"REFUNDNO" VARCHAR2(200 BYTE), 
	"MEMBERORDERNO" VARCHAR2(200 BYTE), 
	"REFUNDREASON" VARCHAR2(200 BYTE), 
	"REASONPHOTO" VARCHAR2(200 BYTE), 
	"MEMBERID" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table PRODREVIEWREPLY
--------------------------------------------------------

  CREATE TABLE "PRODREVIEWREPLY" 
   (	"REVIEWNO" VARCHAR2(200 BYTE), 
	"MANAGERWRITER" VARCHAR2(200 BYTE), 
	"REVIEWREPLYCONTENT" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "PRODUCT" 
   (	"PRODUCTNO" VARCHAR2(200 BYTE), 
	"PRODUCTNAME" VARCHAR2(200 BYTE), 
	"RECEIVNGDATE" DATE, 
	"PRODUCTSTOCK" NUMBER, 
	"INQUANTITY" NUMBER, 
	"COST" NUMBER, 
	"PRICE" NUMBER, 
	"CATEGORYNO" VARCHAR2(200 BYTE), 
	"SIZENO" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table PRODUCTCATEGORY
--------------------------------------------------------

  CREATE TABLE "PRODUCTCATEGORY" 
   (	"CATEGORYNO" VARCHAR2(200 BYTE), 
	"CATEGORYNAME" VARCHAR2(200 BYTE), 
	"PRODUCTNO" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table PRODUCTINQUIRY
--------------------------------------------------------

  CREATE TABLE "PRODUCTINQUIRY" 
   (	"PRODUCTINQNO" VARCHAR2(200 BYTE), 
	"MEMBERID" VARCHAR2(200 BYTE), 
	"PRODUCTINQCONT" VARCHAR2(200 BYTE), 
	"PRODINQRE" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table PRODUCTPHOTO
--------------------------------------------------------

  CREATE TABLE "PRODUCTPHOTO" 
   (	"PRODUCTPHOTONO" VARCHAR2(200 BYTE), 
	"PRODUCTNO" VARCHAR2(200 BYTE), 
	"PHOTOPATH" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table PRODUCTREVIEW
--------------------------------------------------------

  CREATE TABLE "PRODUCTREVIEW" 
   (	"REVIEWNO" VARCHAR2(200 BYTE), 
	"PRODUCTNO" VARCHAR2(200 BYTE), 
	"BUYWRITER" VARCHAR2(200 BYTE), 
	"PRODUCTSCORE" NUMBER, 
	"PRODUCTCONTENT" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table QNA
--------------------------------------------------------

  CREATE TABLE "QNA" 
   (	"QNO" VARCHAR2(200 BYTE), 
	"MEMBERID" VARCHAR2(200 BYTE), 
	"QNACONTENT" VARCHAR2(200 BYTE), 
	"QNAREPLY" VARCHAR2(200 BYTE), 
	"TITLE" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table QNAIMGE
--------------------------------------------------------

  CREATE TABLE "QNAIMGE" 
   (	"PRODUCTPHOTONO" VARCHAR2(200 BYTE), 
	"EMAIL" VARCHAR2(200 BYTE), 
	"PHOTOPATH" VARCHAR2(200 BYTE), 
	"QNO" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table SIZES
--------------------------------------------------------

  CREATE TABLE "SIZES" 
   (	"SIZEKIND" VARCHAR2(200 BYTE), 
	"SIZENO" VARCHAR2(200 BYTE), 
	"PRODUCTNO" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table WISHLIST
--------------------------------------------------------

  CREATE TABLE "WISHLIST" 
   (	"PRODUCTNO" VARCHAR2(200 BYTE), 
	"MEMBERID" VARCHAR2(200 BYTE), 
	"GUESTTELNO" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  Constraints for Table COLOR
--------------------------------------------------------

  ALTER TABLE "COLOR" ADD CONSTRAINT "COLORNO_PK" PRIMARY KEY ("COLORNO") ENABLE;
--------------------------------------------------------
--  Constraints for Table MANAGER
--------------------------------------------------------

  ALTER TABLE "MANAGER" ADD CONSTRAINT "MANAGERID_PK" PRIMARY KEY ("MANAGERID") ENABLE;
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MEMBER" ADD CONSTRAINT "MEMBERID_PK" PRIMARY KEY ("MEMBERID") ENABLE;
  ALTER TABLE "MEMBER" ADD CONSTRAINT "GENDER_CHECK" CHECK (GENDER IN ('M','F')) ENABLE;
  ALTER TABLE "MEMBER" ADD CONSTRAINT "WITHDRAW_CHECK" CHECK (WITHDRAW IN ('0', '1')) ENABLE;
--------------------------------------------------------
--  Constraints for Table MEMBERREFUND
--------------------------------------------------------

  ALTER TABLE "MEMBERREFUND" ADD CONSTRAINT "MBREFUND_NO_PK" PRIMARY KEY ("REFUNDNO") ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODREVIEWREPLY
--------------------------------------------------------

  ALTER TABLE "PRODREVIEWREPLY" ADD CONSTRAINT "PRREVREPLY_NO_PK" PRIMARY KEY ("REVIEWNO") ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "PRODUCT" ADD CONSTRAINT "PRNO_PK" PRIMARY KEY ("PRODUCTNO") ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUCTCATEGORY
--------------------------------------------------------

  ALTER TABLE "PRODUCTCATEGORY" ADD CONSTRAINT "CATEGORYNO_PK" PRIMARY KEY ("CATEGORYNO") ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUCTINQUIRY
--------------------------------------------------------

  ALTER TABLE "PRODUCTINQUIRY" ADD CONSTRAINT "PRINQUIRYNO_PK" PRIMARY KEY ("PRODUCTINQNO") ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUCTPHOTO
--------------------------------------------------------

  ALTER TABLE "PRODUCTPHOTO" ADD CONSTRAINT "PRPHOTONO_PK" PRIMARY KEY ("PRODUCTPHOTONO") ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUCTREVIEW
--------------------------------------------------------

  ALTER TABLE "PRODUCTREVIEW" ADD CONSTRAINT "REVIEWNO_PK" PRIMARY KEY ("REVIEWNO") ENABLE;
--------------------------------------------------------
--  Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "QNA" ADD CONSTRAINT "QNO_PK" PRIMARY KEY ("QNO") ENABLE;
--------------------------------------------------------
--  Constraints for Table SIZES
--------------------------------------------------------

  ALTER TABLE "SIZES" ADD CONSTRAINT "SIZENO_PK" PRIMARY KEY ("SIZENO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "CART" ADD CONSTRAINT "CARTMBID_FK" FOREIGN KEY ("MEMBERID")
	  REFERENCES "MEMBER" ("MEMBERID") ENABLE;
  ALTER TABLE "CART" ADD CONSTRAINT "CARTPRNO_FK" FOREIGN KEY ("PRODUCTNO")
	  REFERENCES "PRODUCT" ("PRODUCTNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COLOR
--------------------------------------------------------

  ALTER TABLE "COLOR" ADD CONSTRAINT "CRPRODUCTNO_FK" FOREIGN KEY ("PRODUCTNO")
	  REFERENCES "PRODUCT" ("PRODUCTNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GUESTORDER
--------------------------------------------------------

  ALTER TABLE "GUESTORDER" ADD CONSTRAINT "GOPRODUCTNO_FK" FOREIGN KEY ("PRODUCTNO")
	  REFERENCES "PRODUCT" ("PRODUCTNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MEMBERREFUND
--------------------------------------------------------

  ALTER TABLE "MEMBERREFUND" ADD CONSTRAINT "MBREFUND_ID_FK" FOREIGN KEY ("MEMBERID")
	  REFERENCES "MEMBER" ("MEMBERID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCTCATEGORY
--------------------------------------------------------

  ALTER TABLE "PRODUCTCATEGORY" ADD CONSTRAINT "CTPRODUCTNO_FK" FOREIGN KEY ("PRODUCTNO")
	  REFERENCES "PRODUCT" ("PRODUCTNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCTINQUIRY
--------------------------------------------------------

  ALTER TABLE "PRODUCTINQUIRY" ADD CONSTRAINT "PRINQUIRY_MEMBERID_FK" FOREIGN KEY ("MEMBERID")
	  REFERENCES "MEMBER" ("MEMBERID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCTPHOTO
--------------------------------------------------------

  ALTER TABLE "PRODUCTPHOTO" ADD CONSTRAINT "PRNO_FK" FOREIGN KEY ("PRODUCTNO")
	  REFERENCES "PRODUCT" ("PRODUCTNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "QNA" ADD CONSTRAINT "QNA_MEMBERID_FK" FOREIGN KEY ("MEMBERID")
	  REFERENCES "MEMBER" ("MEMBERID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SIZES
--------------------------------------------------------

  ALTER TABLE "SIZES" ADD CONSTRAINT "SIZEPRNO_FK" FOREIGN KEY ("PRODUCTNO")
	  REFERENCES "PRODUCT" ("PRODUCTNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table WISHLIST
--------------------------------------------------------

  ALTER TABLE "WISHLIST" ADD CONSTRAINT "WLMBID_FK" FOREIGN KEY ("MEMBERID")
	  REFERENCES "MEMBER" ("MEMBERID") ENABLE;
  ALTER TABLE "WISHLIST" ADD CONSTRAINT "WLPRNO_FK" FOREIGN KEY ("PRODUCTNO")
	  REFERENCES "PRODUCT" ("PRODUCTNO") ENABLE;
