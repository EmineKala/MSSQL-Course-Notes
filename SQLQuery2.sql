--Create Database Deneme
--Use Deneme
--Create Table KitapBilgi
--(
--Ad varchar(50),
--Yazar varchar(50),
--Sayfa varchar(4),
--Stok smallint
--)

--Create Table Tablo1
--(
--ID int identity(1,1),
--Ad varchar(20)
--)
--Create Table Tablo2
--(
--ID int identity(1,1),
--Ad varchar(20),
--Soyad varchar(20),
--DogumYeri varchar(15) Default 'Adana'

--)
--Create Table Tablo3
--(
--ID int identity(1,1),
--OgrenciAdi varchar(20),
--DersAdi varchar(20),
--Sinav1 int Check(Sinav1<=100),
--Sinav2 int Check(Sinav2>=0)
--)

--Alter Table KitapBilgi
--Add KitapTur varchar(20)

--Alter Table KitapBilgi
--Alter Column Stok tinyint

--Drop Table Tablo2
--Alter Table KitapBilgi
--Drop Column Stok 

--Select URUNID, URUNAD,SATISFIYAT From TBLURUN 
--Select * From TBLKATEGORI

--Select * From TBLURUN Where  STOK > 30 or SATISFIYAT=6000 or URUNAD ='Buzdolabý'

--Insert Into TBLKATEGORI(KATEGORIAD) values ('Telefon')
--Insert Into TBLMUSTERI(MUSTERIAD,MUSTERISOYAD,SEHIR,BAKIYE) values ('Yunus','Ýnce','Ankara',26000)
--select*from TBLMUSTERI

--Delete From TBLURUN Where URUNID = 9

--Update TBLKATEGORI Set KATEGORIAD='Telefon' where KATEGORIAD='Telefon'
--Update TBLURUN Set ALISFIYAT =1950, STOK=80 where URUNID=2 
--Update TBLURUN Set STOK = STOK-10 Where URUNAD='Laptop'
--Select*From TBLURUN

--Create Table TBLPERSONEL
--(ID int identity(1,1),
--AD varchar(20),
--DEPARTMAN varchar(20),
--MAAS Decimal(18,2),
--DURUM bit,
--SEHIR varchar(13)
--)

--Insert Into TBLPERSONEL(AD,DEPARTMAN,MAAS,DURUM,SEHIR) Values ('Selda','Muhasebe',3800,'True','Ankara')
--Insert Into TBLPERSONEL(AD,DEPARTMAN,MAAS,DURUM,SEHIR) Values ('Sinem','Satýn Alma',4500,'True','Ankara')
--Insert Into TBLPERSONEL(AD,DEPARTMAN,MAAS,DURUM,SEHIR) Values ('Kadriye','Satýn Alma',4500,'True','Çanakkale')
--Insert Into TBLPERSONEL(AD,DEPARTMAN,MAAS,DURUM,SEHIR) Values ('Yunus','Satýn Alma',4500,'True','Ýstanbul')
--Insert Into TBLPERSONEL(AD,DEPARTMAN,MAAS,DURUM,SEHIR) Values ('Ömer','Danýþma',6000,'True','Balýkesir')
--Insert Into TBLPERSONEL(AD,DEPARTMAN,MAAS,DURUM,SEHIR) Values ('Funda','Muhasebe',5000,'True','Nevþehir')
--Insert Into TBLPERSONEL(AD,DEPARTMAN,MAAS,DURUM,SEHIR) Values ('Burak','Saha Sorumlusu',4000,'True','Trabzon')
--Insert Into TBLPERSONEL(AD,DEPARTMAN,MAAS,DURUM,SEHIR) Values ('Eylül','Mutfak',4000,'False','Bursa')
--Insert Into TBLPERSONEL(AD,DEPARTMAN,MAAS,DURUM,SEHIR) Values ('Mesut','Koordinatör',5200,'True','Ýstanbul')

--Select*From TBLPERSONEL where AD LIKE '%ES%'
--Select*From TBLPERSONEL where DEPARTMAN LIKE 'S%'
--Select*From TBLPERSONEL where DURUM='TRUE'
--Select*From TBLPERSONEL where AD LIKE '%m'
--Select*From TBLPERSONEL where SEHIR NOT LIKE 'b%'
--Select*From TBLPERSONEL where SEHIR IN ('Ankara','Balýkesir')
--Select*From TBLPERSONEL where AD LIKE '%a%' or SEHIR IN('Bursa', 'Ýstanbul')
--Select*From TBLPERSONEL where SEHIR NOT IN ('Ankara','Ýstanbul','Trabzon')
--Update TBLPERSONEL Set MAAS=MAAS+MAAS*20/100 Where SEHIR IN ('Ankara', 'Ýstanbul')

--Select AVG(STOK) From TBLURUN
--Select AVG(SATISFIYAT) From TBLURUN Where URUNAD ='Buzdolabý'
--Select MIN(STOK) From TBLURUN
--Select URUNAD, KOD as 'Ürün Kodu', STOK as 'Toplam Stok' From TBLURUN
--Select 10+20 As 'Toplam'
--Select URUNAD, STOK*2 From TBLURUN 
--Select 20+4 As 'Toplam', 20-4 As 'Fark', 20*4 As 'Çarpým', 20/4 As 'Bölüm'
--Update TBLPERSONEL Set DEPARTMAN = 'Güncellenecek' Where DEPARTMAN is Null
--Select * From TBLPERSONEL Where SEHIR IS NOT NULL
--Select Distinct(DEPARTMAN) from TBLPERSONEL Where SEHIR ='Ankara'
--Select * From TBLURUN Where SATISFIYAT BETWEEN 100 and 400 And KATEGORI is not null
--Select SEHIR, Count(*) From TBLMUSTERI GROUP BY SEHIR
--Select KATEGORI, Count(*) From TBLURUN GROUP BY KATEGORI
--Select URUNAD,SUM(STOK) From TBLURUN Group By URUNAD
--Select URUNAD, Count(*) From TBLURUN Group By URUNAD
--Select * From TBLURUN ORDER BY URUNAD
--Select * From TBLKATEGORI Order By KATEGORIAD Desc
--Select URUNAD, Count(*) as 'Adet' From TBLURUN Where KATEGORI = (Select KATEGORIID FROM TBLKATEGORI Where KATEGORIAD='Beyaz Eþya')
--Group By URUNAD ORDER BY URUNAD DESC
--Select URUNAD, Count(*) as 'Adet' From TBLURUN Where KATEGORI = 1 GROUP BY URUNAD ORDER BY URUNAD DESC
--Select URUNAD, Sum(STOK) From TBLURUN GROUP BY URUNAD Having SUM(STOK)<100
--Select SEHIR, Count(*) From TBLMUSTERI GROUP BY SEHIR HAVING count(*) =1 

--Insert Into TBLURUN (URUNAD, KOD, ALISFIYAT,SATISFIYAT,STOK,KATEGORI) values ('Ütü','UT1',130,160,50,3)
--Use DbUrunYonetim
--Select * From TBLURUN Where KATEGORI = (Select KATEGORIID From TBLKATEGORI Where KATEGORIAD = 'Beyaz Eþya')
--Select Sum(STOK)From TBLURUN Where KATEGORI =(Select KATEGORIID From TBLKATEGORI Where KATEGORIAD ='Küçük Ev Aleti')
--Select * From TBLURUN Where SATISFIYAT = (Select Max(SATISFIYAT) FROM TBLURUN)
--Select * From TBLURUN Where STOK = (Select MIN(STOK) from TBLURUN)
--Select Count(*) From TBLURUN Where KATEGORI = (Select KATEGORIID From TBLKATEGORI Where KATEGORIAD ='Beyaz Eþya') and SATISFIYAT <2000
--Update TBLURUN Set STOK = STOK +10 Where KATEGORI = (Select KATEGORIID From TBLKATEGORI Where KATEGORIAD ='Beyaz Eþya')
--Select Max(STOK) - Min(STOK) from TBLURUN
--Update TBLURUN Set STOK = (Select Max(STOK) From TBLURUN) Where URUNAD = 'Tablet'

--Select URUNAD, KATEGORIAD From TBLURUN
--INNER JOIN TBLKATEGORI
--ON TBLKATEGORI.KATEGORIID = TBLURUN.KATEGORI

--Select KATEGORIAD, Count(*) As 'Toplam' From TBLURUN 
--INNER JOIN TBLKATEGORI
--ON TBLKATEGORI.KATEGORIID = TBLURUN.KATEGORI
--GROUP BY KATEGORIAD

--Select URUNAD,KATEGORIAD From TBLURUN
--FULL  JOIN TBLKATEGORI
--ON TBLURUN.KATEGORI = TBLKATEGORI.KATEGORIID

--Select URUNAD, KATEGORIAD From TBLURUN
--CROSS JOIN TBLKATEGORI

--Select P1.CALISANID, P1.UNVAN, P2.UNVAN AS 'Yöneticisi'
--FROM TBLYONETIM P1 LEFT OUTER JOIN TBLYONETIM P2 
--ON P1.YONETICIID = P2.CALISANID

--Select * From TBLKATEGORI
--INTERSECT 
--Select * From TBLKATEGORI2

--Select * From TBLKATEGORI
--EXCEPT
--Select * From TBLKATEGORI2

--Select * From TBLKATEGORI
--UNION ALL
--Select * From TBLKATEGORI2

--Select Abs(-5) As 'Mutlak Deðer'
--Select Ceiling (85.6) As 'Üste Yuvarla', Floor(85.6) As 'Alta Yuvarla'

--Select Pi()
--Select Power(2,5)

--Select URUNAD, Power(STOK,2) From TBLURUN

--Select Rand()
--Select Round(1.45645645,2)
--Select Sign(-5), Sign(5), Sign(0)
--Select Sqrt(625)
--Select Square(2)
--Select Log(100)

--Select ASCII('A')
--Select CHAR(65)
--Select Charindex('asla', 'Dinlenmemek asla üzere yürümeye karar verenler asla yorulmazlar',15) 
--Select concat('aile ', 'baskýsý')
--Select CONCAT_WS('-', 'Türk','Öðün','Çalýþ','Güven')
--Select Left('merhaba',2)
--Select LEN('Merhaba')
--Select LOWER('SELAMLAR')
--Select LOWER(URUNAD) FROM TBLURUN
--Select LTRIM('       Selamlar')
--Select RTRIM('Selamlar                             ')
--Select PATINDEX('%go%', 'Algoritma ve Programlama')

--Select Replace('Yazilim Dünyasýna Merhaba','i','ý')

--Select REPLICATE ('Merhaba',3)
--Select REVERSE('Merhaba')

--Select REVERSE(URUNAD), KOD FROM TBLURUN

--Select RIGHT('Merhaba',5)
--Select 'Selam' +Space(5) + 'Ýstanbul'

--Select URUNAD + SPACE(5)+ KOD FROM TBLURUN

--Select * From String_Split('Bu Dünya Yalan Dünya',' ')

--Select SUBSTRING('Yazýlým Kodlama Algoritma',12,3) 

--Create Procedure KATEGORILER
--As
--Select * From TBLKATEGORI
--KATEGORILER

--Alter Procedure URUNLER
--As
--Select URUNAD,STOK, KATEGORIAD,KOD,SATISFIYAT From TBLURUN
--Inner Join TBLKATEGORI ON TBLKATEGORI.KATEGORIID = TBLURUN.KATEGORI

--URUNLER

--Drop PROCEDURE KATEGORILER

--ALTER Procedure [dbo].[Deneme]
--As
--Declare @sayi1 int, @sayi2 int, @toplam int
--Set @sayi1=2
--Set @sayi2=3
--Set @toplam = @sayi1 + @sayi2
--Print @toplam

--Deneme

--Create Procedure GETIR (@ID INT)
--As
--Select * From TBLURUN Where URUNID = @ID

--GETIR 5

--Create Procedure EKLE (@p varchar (30))
--As
--Insert Into TBLKATEGORI (KATEGORIAD) Values (@p)

--EKLE 'Test'

--Alter Procedure TOPLAM(@SAYI1 INT, @SAYI2 INT)
--As
--Return @SAYI1 + @SAYI2

--Declare @SONUC INT
--Execute @SONUC = TOPLAM 2,3
--Print @SONUC

--Create Procedure Kare (@kenar int, @cevre int output, @alan int output)
--As
--Set @cevre = @kenar * 4
--Set @alan = @kenar * @kenar

--Declare @sonucalan int, @sonuccevre int
--Execute Kare 10, @sonuccevre output, @sonucalan output
--Print @sonucalan
--Print @sonuccevre

--Create Database DbKitaplik

--Create Table TBLKITAP
--(
--ID int identity(1,1) primary key,
--KITAPAD varchar(50),
--YAZAR varchar(50),
--TARIH smalldatetime
--)

--Create TAble TBLUYE
--(
--ID int identity(1,1) primary key,
--AD varchar(30),
--SOYAD varchar(30),
--BOLUM varchar(50)

--)

--Create TAble TBLEMANET
--(
--ID int identity(1,1) primary key,
--KITAP int,
--UYE int,
--EMANETTARIH smalldatetime,
--IADETARIH smalldatetime
--)

--Select getdate() AS TARIH
--Select DATEPART(quarter, getdate())
--Select DATEPART(hour,getdate())

--SElect DateAdd(Day,5,GETDATE())
--Select DateName(MONTH, '05.01.2020')

--Select DATEDIFF(Day, '02.01.2020', getdate())

--Select * From TBLKITAP Where KITAPAD Like '%e%' and TARIH <'04.09.2020'

--Select * From TBLEMANET Where DATEDIFF(DAy, EMANETTARIH, IADETARIH) > 10

--Select KITAPAD, AD + ' ' + SOYAD AS 'Ad - Soyad', DAteDIFF(Day, EMANETTARIH,IADETARIH) AS 'Gün' From TBLEMANET
--Inner Join TBLKITAP ON TBLKITAP.ID = TBLEMANET.KITAP
--Inner JOin TBLUYE ON TBLUYE.ID = TBLEMANET.UYE

--Select DATENAME(WeekDay,(Select EMANETTARIH From TBLEMANET Where  KITAP = (Select ID From TBLKITAP Where YAZAR ='Jules Verne')))

--Select Count(*) From TBLEMANET Where EMANETTARIH <='05.10.2020'

--Select KITAPAD,YAZAR, DAteName(weekday,EMANETTARIH) From TBLEMANET

--Inner Join TBLKITAP ON TBLKITAP.ID = TBLEMANET.KITAP
--Where YAZAR = 'Jules Verne'
--Use DbUrunYonetim
--Create Table TBLSTOK
--(
--ADET int
--)

--INSERT INTO TBLSTOK Values(0)

--Update TBLSTOK SET Adet = (Select Count(*) From TBLURUN)

--Create Trigger STOK_ARTTIR
--ON TBLURUN
--AFTER INSERT
--AS
--UPDATE TBLSTOK SET ADET +=1

--INSERT INTO TBLURUN(URUNAD,SATISFIYAT) VALUES ('Kilim',100)
--INSERT INTO TBLURUN(URUNAD,SATISFIYAT) VALUES ('KÝtaplýk',135)

--Create Trigger STOK_AZALT
--ON TBLURUN
--AFTER DELETE
--AS
--UPDATE TBLSTOK SET ADET-=1

--Create TAble TBLDUZENLEME
--(
--ID int identity(1,1),
--TARIH date,
--ACIKLAMA varchar(100)
--)

--Create TRigger URUN_DUZENLE
--ON TBLURUN
--AFTER UPDATE
--AS
--INSERT INTO TBLDUZENLEME(TARIH,ACIKLAMA) Values(Getdate(),'Deðiþiklik Yapýldý')

--UPdate TBLURUN SET STOK = STOK-5 Where URUNID=5

--Select * FROM TBLDUZENLEME

--UPDATE TBLSTOK SET ADET = (SElect sum(stok) from TBLURUN) 

--Create Trigger STOK_EKLE
--ON TBLURUN
--AFTER INSERT
--AS
--DECLARE @STOKSAYÝ INT
--SELECT @STOKSAYÝ = STOK FROM INSERTED
--UPDATE TBLSTOK SET ADET = ADET + @STOKSAYÝ

--INSERT INTO TBLURUN(URUNAD,STOK) VALUES ('USB Disk',250)

--CREATE TRIGGER STOK_DUSUR
--ON TBLURUN
--AFTER DELETE
--AS
--DECLARE @STOKSAYI INT
--SELECT @STOKSAYI = STOK FROM DELETED
--UPDATE TBLSTOK SET ADET = ADET - @STOKSAYI

--DELETE FROM TBLURUN WHERE URUNID =16

--CREATE TRIGGER URUN_SIL
--ON TBLURUN
--INSTEAD OF DELETE
--AS
--UPDATE TBLURUN SET ISLEM =GETDATE() WHERE URUNID IN (SELECT URUNID FROM DELETED)
--DELETE FROM TBLURUN WHERE URUNID=14

--DROP TRIGGER STOK_ARTTIR

--Select*From View_1

--Create View View_2
--As
--Select MUSTERIAD,MUSTERISOYAD,SEHIR From TBLMUSTERI 

--Select * From View_2

--Create Table TBLSATISLAR
--(
--SATISID int identity(1,1) primary key,
--MUSTERI int,
--URUN int,
--FIYAT decimal(18,2),
--ADET tinyint
--)

--Create View View_3
--As
--Select MUSTERIAD, MUSTERISOYAD,URUNAD,FIYAT FROM TBLSATISLAR
--Inner Join TBLMUSTERI ON TBLSATISLAR.MUSTERI = TBLMUSTERI.MUSTERIID
--Inner Join TBLURUN On TBLSATISLAR.URUN = TBLURUN.URUNID

--Select * From View_3

--Create View View_4(URUNAD, STOK)
--As
--Select URUNAD, STOK * 20 From TBLURUN

--Select * From View_4

--ALTER View View_1
--AS
--Select dbo.TBLKATEGORI.KATEGORIAD, dbo.TBLURUN.URUNAD, dbo.TBLURUN.STOK, dbo.TBLURUN.KOD
--FROM     dbo.TBLKATEGORI INNER JOIN
--                  dbo.TBLURUN ON dbo.TBLKATEGORI.KATEGORIID = dbo.TBLURUN.KATEGORI

--Drop View View_4

--ALter View View_4
--As
--Select * From TBLURUN
--Where STOK <60

--Select  *From View_4

--Insert Into View_4(URUNAD,STOK) Values ('Tost Makinesi',75)

--Alter View View_4
--As
--Select * From TBLURUN Where STOK <60
--With Check Option

--Insert Into View_4(URUNAD,STOK) Values ('Mikser',50)

--Create View View_5
--With ENCRYPTION
--As
--Select URUNAD, KOD, STOK FROM TBLURUN

--Create View View_6
--With Schemabinding
--As
--Select URUNAD,STOK From dbo.TBLURUN Where STOK>50

--Alter Table TBLURUN DROP COLUMN STOK

--Select * From Categories

--Select City, Count(*) From Customers Group By City Order By Count(*) Desc

--Select * From Customers Where City = 'London' or City = 'Madrid'

--Select * From Products

--Select * From Products Where CategoryID = (Select CategoryID From Categories Where CategoryName ='SeaFood')
--and SupplierID = (Select SupplierID From Suppliers Where City= 'Tokyo')

--Select * From Products Where CategoryID =(Select CategoryID From Categories Where CategoryName = 'Meat/Poultry')
--and UnitPrice >50

--SElect * From Orders Where ShipVia = (Select ShipperID From Shippers Where CompanyName ='Speedy Express')

--Select CompanyName, Count(*) From Orders 
--Inner Join Shippers ON Orders.ShipVia = Shippers.ShipperID
--Group By CompanyName

--Declare @sehir varchar(15)
--Set @sehir ='Ankara'
--SElect @sehir

--Declare @sayi1 int, @sayi2 int, @carpim int
--Set @sayi1 =45
--Set @sayi2 =50
--Set @carpim = @sayi1*@sayi2
--Select @carpim as 'Çarpým'

--Declare @adet int
--Set @adet = (Select Count(*) from TBLURUN)
--Select @adet as 'Toplam Ürün'

--Select * From TBLURUN

--print 'Merhaba SQL'

--Declare @s1 int, @s2 int, @carpim int
--Set @s1 =6
--Set @s2 =7
--Set @carpim = @s1*@s2
--print @carpim

--Declare @ulkeler table
--(
--ID tinyint identity,
--ULKE varchar(20),
--BASKENT varchar(20)
--)

--Insert Into @ulkeler(ULKE,BASKENT) Values ('Türkiye','Ankara')
--Insert Into @ulkeler(ULKE,BASKENT) Values ('Fransa','Paris')
--Insert Into @ulkeler(ULKE,BASKENT) Values ('Ýngiltere','Londra')
--Insert Into @ulkeler(ULKE,BASKENT) Values ('Ýspanya','Madrid')

--Select * From @ulkeler where BASKENT Like '%i%'

--Declare @Kopru table
--(
--KATEGORIADI varchar(20)
--)

--Insert Into TBLKATEGORI 
--OUTPUT inserted.KATEGORIAD Into @Kopru values ('Diðer')

--Select * From @Kopru

--Select * From TBLKATEGORI

--Declare @Kopru table
--(
--KATEGORIAD varchar(20)
--)

--Update TBLKATEGORI Set KATEGORIAD ='Test'
--Output inserted.KATEGORIAD Where KATEGORIID=6

--Declare @Kopru table
--(
--KATEGORIAD varchar(20)
--)

--Update TBLKATEGORI set KATEGORIAD = 'test2'
--Output inserted.KATEGORIAD where KATEGORIAD Like '%i%'

--Declare @Kopru Table
--(
--KATEGORIAD varchar(20)
--)

--Delete TBLKATEGORI
--OUTput deleted.KATEGORIAD into @Kopru where KATEGORIID =6

--Select * From @Kopru

--Select * From TBLKATEGORI

--Declare @sayi int
--Set @sayi = 23
--if @sayi = 24
--print 'Sayý 24'
--else
--print 'Sayý 24 Deðil'

--Declare @sayi int
--Set @sayi = 45
--if @sayi%2 =0
--print 'Çift Sayý'
--else
--print 'Tek Sayý'


--If (Select count(*) from TBLURUN) >10
--print 'Toplam kayýt sayýsý 10dan fazladýr'
--else
--print 'Toplam kayýt sayýsý 10dan azdýr'

--if exists (select * from TBLURUN where SATISFIYAT>5000)
--print 'BU fiyatta ürün var'
--else
--print 'BU fiyatta ürün yok'

--Select Top 10 URUNAD, STOK, KATEGORI =
--Case
--When KATEGORI = 1 Then 'Beyaz Eþya'
--When KATEGORI = 2 Then 'Televizyon'
--Else 'Bilinmiyor'
--End
--From TBLURUN

--Declare @sayac int
--Set @sayac =1

--while @sayac <=5
--begin
--print 'SQL Veri Tabaný Çalýþýyoruz'
--Set @sayac+=1
--end

--Declare @sayac int
--Set @sayac = 1

--While @sayac<=10
--Begin
--print @sayac
--Set @sayac +=1
--End

--Declare @sayac int
--Set @sayac =1

--While @sayac <=20
--begin
--if @sayac%3 =0
--print @sayac
--Set @sayac+=1
--end

--While (Select AVG (STOK) From TBLURUN) <100
--begin
--Update TBLURUN Set STOK = STOK + STOK*30/100
--end

--SElect STOK from TBLURUN

--Declare @sayac int, @toplam int
--Set @sayac =0
--Set @toplam =0

--While @sayac<=10
--Begin
--Set @toplam = @toplam + @sayac
--Set @sayac+=1

--if @toplam >=11
--Begin
--Break
--End
--End
--Print @toplam

--Declare @sayac int
--set @sayac =0

--while @sayac<10
--begin
--set @sayac +=1
--if @sayac = 7
--continue
--print @sayac

--end

--Declare @sayac int
--Set @sayac =1
--Satýr:
--print @sayac
--Set @sayac+=1

--while @sayac <=10
--goto Satýr

--Waitfor Delay '00:00:10'

--Select * From TBLURUN Where URUNID <5

--Waitfor Time '19:33:50'
--Select * From TBLURUN Where URUNID <5
