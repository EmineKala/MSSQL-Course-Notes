--Create Database DbYeni
--Use DbYeni
--Create Table TBLMUSTERI
--(
--ID int primary key identity(1,1),
--AD varchar(20),
--SOYAD varchar(20),
--SEHIR varchar (15),
--BAKIYE decimal (18,2)
--)

--Create Table TBLKATEGORI
--(
--KATEGORIID int primary key identity(1,1),
--AD varchar(20)
--)

--Create Table TBLURUN
--(
--URUNID int primary key identity(1,1),
--AD varchar(20),
--ALISFIYAT decimal(18,2),
--SATISFIYAT decimal(18,2),
--STOK smallint,
--DURUM bit,
--KATEGORI int
--)

--Create Table TBLSATIS
--(
--SATISID int primary key identity(1,1),
--MUSTERI int,
--URUN int,
--TARIH date
--)
--Update TBLSTOK Set TOPLAMURUN=(
--SElect count(*) from TBLURUN)


--SElect * From TBLSTOK

--Create Trigger ARTTIR
--ON TBLURUN
--After INSERT
--AS
--UPdate TBLSTOK SEt TOPLAMURUN+=1


--Update TBLSTOK SEt TOPLAMURUN=(Select Sum(STOK) from TBLURUN)
--Drop Trigger ARTTIR

--Create TRigger Arttýr
--On TBLURUN
--After Insert
--AS
--Declare @STOKSAYI int
--SElect @STOKSAYI = STOK from inserted
--Update TBLSTOK Set TOPLAMURUN+=@STOKSAYI

--Create Trigger Azalt
--On TBLURUN
--After Delete
--As
--Declare @STOKSAYI int
--SElect @STOKSAYI = STOK from deleted
--UPdate TBLSTOK Set TOPLAMURUN = TOPLAMURUN -@STOKSAYI

--Insert into TBLURUN(AD,STOK) Values ('Mikser',80)

--Create Trigger SILEKLE
--On TBLURUN
--After Delete
--As
--Declare @ad varchar(20),@alisfiyat decimal(18,2), @satisfiyat decimal(18,2),@stok smallint, @id int
--Select @ad = AD, @alisfiyat = ALISFIYAT, @satisfiyat=SATISFIYAT, @stok = STOK, @id = URUNID from deleted

--Insert Into TBLSILINENURUN(AD, ALISFIYAT,SATISFIYAT,STOK,SILINENURUNID) values (@ad,@alisfiyat,@satisfiyat,@stok,@id)

--Use DbYeni
--Begin Transaction
--Insert Into TBLKATEGORI(AD) values ('TV')
--Insert Into TBLKATEGORI(AD) values ('Halý')

--Select * From TBLKATEGORI
--Rollback

--Begin Transaction
--Insert Into TBLURUN(AD,STOK) values ('URUN3',25)
--Insert Into TBLURUN(AD,STOK) values ('URUN4','x')

--Select * From TBLURUN
--Commit

--Create Function StokArttýr (@adet int)
--Returns int
--As
--Begin
--Return @adet +26
--End

--Select AD, STOK,dbo.StokArttýr(STOK) from TBLURUN

--Create Function Odev (@stok int)
--Returns float
--As
--Begin
--Return (Sqrt(@stok) *3)
--End

--Select AD, STOK, dbo.Odev(STOK) from TBLURUN

--Alter Function Kucukharf(@isim varchar(20))
--returns varchar(20)
--As
--Begin
--Return Lower(@isim)
--End

--Select dbo.Kucukharf(AD), STOK from TBLURUN

--Create Function KDV(@fiyat decimal(18,2))
--returns decimal(18,2)
--As
--Begin
--Return @fiyat*1.18 
--End

--SElect AD, SATISFIYAT, dbo.KDV(SATISFIYAT) from TBLURUN

--Create function URUNBILGI(@URID int)
--Returns TABLE
--AS
--Return SELECT*FROM TBLURUN WHERE URUNID = @URID

--SElect * From dbo.URUNBILGI(4)

--Create Function URUNGETIR(@stok int)
--Returns Table
--As
--Return Select * From TBLURUN Where STOK <= @stok

--Select * From dbo.URUNGETIR(30)

--Create Table TABLO1
--(
--ID int identity(1,1),
--AD varchar(20) 
--)

--Declare @sayac int =1
--while @sayac <250001
--Begin
--Insert TABLO1
--Select 'kitap' + Cast(@sayac as varchar(20))
--Set @sayac = @sayac+1
--End

--Use Dbyeni
--Select count(*) from TABLO1
--Set Statistics Io On
--Set Statistics Time On

--Create Clustered Index TABLOKAYITGETIR
--On TABLO1(ID)

--SElect * From TABLO1 where ID=200

--Use DbYeni
--Create Table JobTablosu
--(
--ID int identity (1,1),
--METIN varchar(20)
--)




