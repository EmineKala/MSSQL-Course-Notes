--Create Table TBLDERSLER
--(
--DERSID tinyint,
--DERSAD varchar(20)
--)

--Alter Table TBLDERSLER
--Drop Column KONTENJAN

--Select OGRAD,OGRSOYAD From TBLOGRENCILER
--Select*From TBLOGRENCILER
--Select OGRSEHIR From TBLOGRENCILER Where OGRAD ='Ali'

--Select * From TBLOGRENCILER Where OGRSEHIR ='Adana' or OGRKULUP='Satranç'

--Select*From TBLNOTLAR
--Select (SINAV1+SINAV2+SINAV3)/3 From TBLNOTLAR

--Insert Into TBLOGRENCILER(OGRAD,OGRSOYAD,OGRSEHIR) Values ('Baran','Yücedað','Elazýð')
--Insert Into TBLNOTLAR (OGRENCI,DERS,SINAV1,SINAV3) Values (6,2,88,67)

--Delete From TBLDERSLER where DERSID=6

--Truncate Table TBLDERSLER 

--Update TBLOGRENCILER Set OGRCINSIYET ='Erkek' Where OGRID =6
--update TBLOGRENCILER Set OGRKULUP='Kitaplýk' Where OGRAD='Baran'
--Insert Into TBLNOTLAR(OGRENCI,DERS,SINAV1,SINAV2) VAlues (5,2,78,66)
--Update TBLNOTLAR set ORTALAMA =(Sýnav1+Sýnav2+Sýnav3)/3
--Update TBLNOTLAR set DURUM=1 Where ORTALAMA >= 50

--Select Count(*) As 'Toplam Kiþi' From TBLOGRENCILER Where OGRSEHIR ='Adana'
--Select Sum(SINAV1), Sum(SINAV2), Sum(SINAV3) From TBLNOTLAR
--Select Avg(SINAV1),Avg(SINAV2),Avg(SINAV3) From TBLNOTLAR
--Select Max(SINAV1) From TBLNOTLAR
--Select Min(SINAV1) From TBLNOTLAR

--Select OGRSEHIR, Count(*) As 'Toplam' From TBLOGRENCILER GROUP BY OGRSEHIR
--Select OGRCINSIYET, Count(*) As 'Toplam'From TBLOGRENCILER Group By OGRCINSIYET

--Select DURUM, Count(*) As 'Toplam Öðrenci' From TBLNOTLAR Group By DURUM

--Select OGRKULUP, Count(*) From TBLOGRENCILER Group By OGRKULUP

--Select OGRSEHIR, Count(*) As 'Sayý' From TBLOGRENCILER Group By OGRSEHIR Having Count(*) =2
--Select OGRKULUP, Count(*) From TBLOGRENCILER Group By OGRKULUP Having OGRKULUP = 'Kitaplýk'

--Select Count(*) As 'Geçenler' From TBLNOTLAR Group By DURUM Having DURUM =1
--Select Count(*) As 'Kalanlar' From TBLNOTLAR Group By DURUM Having DURUM =0

--Select * From TBLOGRENCILER Where OGRAD Like '%a%' or OGRSOYAD Like '%a%'
--Select * From TBLOGRENCILER Where OGRSEHIR Like '%en%'
--Select * From TBLOGRENCILER Where OGRKULUP Not Like 'b%'

--Select  Distinct OGRSEHIR From TBLOGRENCILER
--Select Count(Distinct OGRSEHIR) From TBLOGRENCILER

--Select Distinct OGRKULUP From TBLOGRENCILER
--Select Count(Distinct OGRKULUP) As 'Kulüp Sayýsý' From TBLOGRENCILER

--Select * From TBLOGRENCILER Order By OGRAD Desc

--Select Distinct OGRKULUP From TBLOGRENCILER Order By OGRKULUP DESC

--Select * From TBLOGRENCILER Where OGRSEHIR Like '%an_%'
--Select * From TBLOGRENCILER Where OGRAD Like '[A,B]%'
--Select* From TBLOGRENCILER Where OGRKULUP Like '[a-h]%'

--Select Top 3 * From TBLOGRENCILER Order By OGRID Desc
--Select Top 60 Percent * From TBLOGRENCILER

--Select * From TBLOGRENCILER Where OGRSEHIR IN ('Ýzmir', 'Ankara','Edirne')
--Select * From TBLNOTLAR Where SINAV1 IN (70,75,80,85)

--Select * From TBLNOTLAR Where ORTALAMA BETWEEN 75 and 80
--Select * From TBLOGRENCILER Where OGRAD BETWEEN 'A' and 'U'

--Update TBLOGRENCILER Set OGRKULUP =4 Where OGRKULUP='Gezi'
--Insert Into TBLOGRENCILER (OGRAD,OGRKULUP,OGRSEHIR) values ('Berna',4,'Ankara')

--Select NOTID, OGRAD +' ' +OGRSOYAD as 'AD - SOYAD', DERSAD,SINAV1, SINAV2,SINAV3,ORTALAMA,DURUMAD As 'DURUM' From TBLNOTLAR
--Inner Join TBLDERSLER
--On TBLNOTLAR.DERS = TBLDERSLER.DERSID
--Inner Join TBLOGRENCILER
--On TBLNOTLAR.OGRENCI = TBLOGRENCILER.OGRID
--Inner Join TBLDURUM
--On TBLNOTLAR.DURUM = TBLDURUM.DURUMID

--Select*From TBLNOTLAR
--Update TBLNOTLAR Set ORTALAMA = (Sýnav1+Sýnav2+Sýnav3)/3 where DERS=1
--Update TBLNOTLAR Set DURUM = 0 where ORTALAMA<50

--Select * From TBLNOTLAR Where DERS=(Select DERSID From TBLDERSLER where DERSAD='Matematik')

--Select Max(SINAV1) As 'Algoritma En Yüksek Sýnav1 Notu' From TBLNOTLAR Where DERS = (Select DERSID From TBLDERSLER Where DERSAD='Algoritma')

--Select * From TBLNOTLAR
--INNER JOIN TBLOGRENCILER
--ON TBLOGRENCILER.OGRID = TBLNOTLAR.OGRENCI

--Select * From TBLNOTLAR
--Right JOIN TBLOGRENCILER
--ON TBLOGRENCILER.OGRID = TBLNOTLAR.OGRENCI

--Select * From TBLNOTLAR
--FULL JOIN TBLOGRENCILER
--ON TBLOGRENCILER.OGRID = TBLNOTLAR.OGRENCI

--Select* From TBLKULUPLER UNION
--Select * From TBLDERSLER

--Select 20+4 as 'Toplam'
--Select*From TBLNOTLAR Where Ders=1
--Update TBLNOTLAR Set SINAV2 = SINAV2+10 From TBLNOTLAR Where Ders=1
--UPdate TBLNOTLAR Set SINAV2 = 100 Where Sýnav2 >100
--Update TBLNOTLAR SET ORTALAMA = (Sýnav1+Sýnav2+Sýnav3)/3
--UPdate TBLNOTLAR SET DURUM =1 Where ORTALAMA>=50
--Select AVG(ORTALAMA) FROM TBLNOTLAR Where Ders=1

--Select OGRENCI, AVG(ORTALAMA) FROM TBLNOTLAR GROUP BY OGRENCI
--Select OGRAD + ' ' + OGRSOYAD As 'ÖÐRENCÝ ADI SOYADI', DERSAD, ORTALAMA, 'Ortalamanýn Üstünde' As 'Durum2' FROM TBLNOTLAR 
--INNER JOIN TBLOGRENCILER
--ON TBLOGRENCILER.OGRID = TBLNOTLAR.OGRENCI
--INNER JOIN TBLDERSLER
--ON TBLDERSLER.DERSID = TBLNOTLAR.DERS
--WHERE ORTALAMA>= (SELECT AVG(ORTALAMA) FROM TBLNOTLAR)

--UNION

--Select OGRAD + ' ' + OGRSOYAD As 'ÖÐRENCÝ ADI SOYADI', DERSAD, ORTALAMA, 'Ortalamanýn Altýnda' As 'Durum2' FROM TBLNOTLAR 
--INNER JOIN TBLOGRENCILER
--ON TBLOGRENCILER.OGRID = TBLNOTLAR.OGRENCI
--INNER JOIN TBLDERSLER
--ON TBLDERSLER.DERSID = TBLNOTLAR.DERS
--WHERE ORTALAMA< (SELECT AVG(ORTALAMA) FROM TBLNOTLAR)

--Select ABS(-85) AS 'Mutlak'
--Select POWER(2,4)
--Select SQRT(625)
--Select Floor(4.86) As 'Taban', Ceiling(4.86) AS 'Tavan'

--Select Sum(Sýnav1) From TBLNOTLAR Where OGRENCI =1

--Select DERSAD,SINAV1 FROM TBLNOTLAR INNER JOIN TBLDERSLER
--ON TBLNOTLAR.DERS = TBLDERSLER.DERSID
--WHERE OGRENCI = (SELECT OGRID FROM TBLOGRENCILER WHERE OGRAD='Ayþe' and OGRSOYAD='Çýnar')

--Select OGRAD + ' ' + OGRSOYAD AS 'ÖÐRENCÝ', DERSAD, SINAV1, 'Ortalamanýn Üstünde' as 'Durum' FROM TBLNOTLAR
--INNER JOIN TBLDERSLER ON TBLNOTLAR.DERS = TBLDERSLER.DERSID
--INNER JOIN TBLOGRENCILER ON TBLOGRENCILER.OGRID = TBLNOTLAR.OGRENCI
--WHERE OGRAD = 'Ayþe' and OGRSOYAD = 'Çýnar' and DERSAD='Algoritma'
--AND ORTALAMA >= (SELECT AVG(SINAV1) FROM TBLNOTLAR Where DERSAD ='Algoritma')

--UNION

--Select OGRAD + ' ' + OGRSOYAD AS 'ÖÐRENCÝ', DERSAD, SINAV1, 'Ortalamanýn Altýnda' as 'Durum' FROM TBLNOTLAR
--INNER JOIN TBLDERSLER ON TBLNOTLAR.DERS = TBLDERSLER.DERSID
--INNER JOIN TBLOGRENCILER ON TBLOGRENCILER.OGRID = TBLNOTLAR.OGRENCI
--WHERE OGRAD = 'Ayþe' and OGRSOYAD = 'Çýnar' and DERSAD='Algoritma'
--AND ORTALAMA < (SELECT AVG(SINAV1) FROM TBLNOTLAR Where DERSAD ='Algoritma')

--Select UPPER('Merhaba') as 'Sütun'
--Select UPPER(OGRAD) From TBLOGRENCILER
--Select LOWER(OGRSEHIR) From TBLOGRENCILER

--SELECT UPPER(OGRAD) AS 'AD', LOWER(OGRSOYAD) AS 'SOYAD', OGRSEHIR,KULUPAD FROM TBLOGRENCILER
--INNER JOIN TBLKULUPLER
--ON TBLKULUPLER.KULUPID = TBLOGRENCILER.OGRKULUP
--WHERE OGRSEHIR ='Adana' AND KULUPID = (SELECT KULUPID FROM TBLKULUPLER WHERE KULUPAD ='Biliþim')

--Select SUBSTRING(OGRAD,1,1) + '.' + OGRSOYAD AS 'AD - SOYAD', SUBSTRING(KULUPAD,1,3) AS 'KULÜP' From TBLOGRENCILER
--INNER JOIN TBLKULUPLER
--ON TBLKULUPLER.KULUPID = TBLOGRENCILER.OGRKULUP

--Select Left('Merhaba Dünya',9)

--Select LEFT(DERSAD,3), CAST(AVG(ORTALAMA) as DECIMAL(5,2))FROM TBLNOTLAR
--INNER JOIN TBLDERSLER ON TBLDERSLER.DERSID = TBLNOTLAR.DERS
--GROUP BY DERSAD

--SELECT OGRAD, LEN(OGRAD), OGRKULUP From TBLOGRENCILER
--WHERE OGRSEHIR = 'Adana' AND OGRKULUP= (SELECT KULUPID FROM TBLKULUPLER WHERE KULUPAD='Biliþim')

--Select OGRAD,OGRSOYAD,LEN(OGRAD + OGRSOYAD) AS 'Toplam Uzunluk' From TBLOGRENCILER WHERE LEN(OGRAD+OGRSOYAD) BETWEEN 3 AND 7

--Select rtrim( '      Korkma Sönmez Bu Þafaklarda Yüzen Al Sancak            ')
--Select REPLACE('Selam','a', 'b')

--Select REPLACE(REPLACE ('Merhaba bugün hava soðuk','ü','u'),'ð','g')

--Select CHARINDEX('e', 'SQL Derslerine Devam Ediyoruz',20)
--Select REVERSE(DERSAD) FROM TBLDERSLER

--Create Database SatisVT
--Use SatisVT
--Create Table TBLKATEGORI
--(
--KATEGORIID tinyint identity(1,1) primary key,
--KATEGORIAD varchar(50)

--)

--Create Table TBLURUNLER
--(
--URUNID int identity(1,1) primary key,
--URUNAD varchar(50),
--URUNMARKA varchar(50),
--KATEGORI tinyint,
--URUNALISFIYAT decimal(18,2),
--URUNSATISFIYAT decimal(18,2),
--URUNSTOK smallint check(URUNSTOK>0),
--URUNDURUM bit default '1'

--)

--Create Table TBLPERSONEL
--(
--PERSONELID smallint identity(1,1) primary key,
--PERSONELADSOYAD varchar(50)
--)

--Create Table TBLMUSTERI
--(
--MUSTERIID int primary key identity(1,1),
--MUSTERIAD Varchar(50),
--MUSTERISOYAD varchar(50),
--MUSTERISEHIR varchar(13),
--MUSTERIBAKIYE decimal(18,2)
--)

--Create Table TBLHAREKET
--(
--HAREKETID int primary key identity(1,1),
--URUN int,
--MUSTERI int,
--PERSONEL smallint,
--ADET int,
--TUTAR decimal(18,2),
--TARIH smalldatetime
--)

--TRUNCATE Table TBLURUNLER

--INSERT INTO TBLKATEGORI(KATEGORIAD) VALUES ('Bilgisayar')
--INSERT INTO TBLKATEGORI(KATEGORIAD) VALUES ('Beyaz Eþya')
--INSERT INTO TBLKATEGORI(KATEGORIAD) VALUES ('Küçük Ev Aleti')
--INSERT INTO TBLKATEGORI(KATEGORIAD) VALUES ('TV')

--INSERT INTO TBLURUNLER (URUNAD,URUNMARKA,KATEGORI,URUNALISFIYAT,URUNSATISFIYAT,URUNSTOK) VALUES
--('Buzdolabý','Siemens',2,4356,4588,10)

--UPDATE TBLURUNLER SET URUNAD = 'Su ISýtýcý' Where URUNAD = 'Kettle'

--Select KATEGORIAD, Count(*) As 'Toplam Ürün' FROM TBLURUNLER
--INNER JOIN TBLKATEGORI
--ON TBLURUNLER.KATEGORI = TBLKATEGORI.KATEGORIID GROUP BY KATEGORIAD
--ORDER BY COUNT(*)

--Select * From TBLURUNLER

--UPDATE TBLURUNLER SET URUNSATISFIYAT=URUNSATISFIYAT+500 Where KATEGORI=(SElect KATEGORIID From TBLKATEGORI WHERE KATEGORIAD ='Bilgisayar')

--Update TBLURUNLER set URUNSATISFIYAT = URUNSATISFIYAT - URUNSATISFIYAT*0.10 Where KATEGORI = (Select KATEGORIID From TBLKATEGORI where KATEGORIAD='TV' )

--Select Count(*), SUM(URUNSTOK) From TBLURUNLER

--Select URUNID, URUNAD,URUNMARKA, KATEGORIAD ,URUNSATISFIYAT,URUNALISFIYAT, (URUNSATISFIYAT - URUNALISFIYAT) as 'KAR', (URUNSATISFIYAT - URUNALISFIYAT)* URUNSTOK as 'TOPLAM KAR' From TBLURUNLER
--INNER JOIN TBLKATEGORI
--ON TBLURUNLER.KATEGORI = TBLKATEGORI.KATEGORIID

--Update TBLURUNLER set URUNSATISFIYAT = URUNSATISFIYAT + URUNSATISFIYAT*0.20 Where (URUNSATISFIYAT-URUNALISFIYAT)*URUNSTOK < 1000

--Create Procedure HAREKETLER
--As
--Select HAREKETID,URUNAD,MUSTERIAD + ' ' + MUSTERISOYAD as 'AD - SOYAD', PERSONELADSOYAD,ADET,TUTAR,TARIH FROM TBLHAREKET
--INNER JOIN TBLURUNLER ON TBLURUNLER.URUNID = TBLHAREKET.URUN
--INNER JOIN TBLMUSTERI ON TBLMUSTERI.MUSTERIID = TBLHAREKET.MUSTERI
--INNER JOIN TBLPERSONEL ON TBLPERSONEL.PERSONELID = TBLHAREKET.PERSONEL

--HAREKETLER

--Create Procedure DENEME
--AS
--Select * From TBLURUNLER Where URUNSTOk>10

--DROP procedure DENEME

--HAREKETLER

--Alter Procedure URUNGETIR
--@Deger varchar(50) = 'Buzdolabý'
--AS
--Select URUNAD,URUNSTOK,URUNMARKA FROM TBLURUNLER
--Where URUNAD = @Deger

--URUNGETIR @Deger = 'Çamaþýr Makinesi'

--Create Procedure URUNSTOK
--@deger smallint
--As
--Select URUNAD,URUNMARKA, URUNSTOK From TBLURUNLER
--Where URUNSTOK > @deger

--Execute URUNSTOK @deger = 15

--Select * From TBLHAREKET Where Datepart(Day, TARIH) Between 1 and 3
--Select * From TBLHAREKET Where Datepart(Day, TARIH) Between 1 and 3 
--and MUSTERI=(Select MUSTERIID From TBLMUSTERI Where MUSTERISEHIR= 'Ankara')

--Select DateName(Month,getdate()), DateName(Month,'2019.01.15')

--Select DATENAME(Weekday,getdate())

--Select DateDiff(Year, '2010.10.25', getdate())

--Select DateDiff(Day, TARIH,getdate()) FROM TBLHAREKET

--SElect DATEADD(YEAR,3, '2019-10-25')

--Select URUNAD, Count(*) As 'Miktar' From TBLHAREKET
--INNER JOIN TBLURUNLER ON TBLURUNLER.URUNID = TBLHAREKET.URUN
-- Group By URUNAD ORDER BY Count(*)

--Select * From TBLHAREKET Where URUN IN 
--(Select URUNID From TBLURUNLER Where KATEGORI = (Select KATEGORIID From TBLKATEGORI Where KATEGORIAD='Bilgisayar'))

--Select * From TBLHAREKET Where MUSTERI In (Select MUSTERIID From TBLMUSTERI Where MUSTERISEHIR ='Adana')

--Select * From TBLHAREKET Where URUN IN (Select URUNID From TBLURUNLER Where KATEGORI = (Select KATEGORIID From TBLKATEGORI Where KATEGORIAD='Beyaz Eþya'))

--Select Sum(Tutar) From TBLHAREKET Where MUSTERI IN (Select MUSTERIID From TBLMUSTERI Where MUSTERISEHIR IN ('Adana', 'Ankara','Bursa'))

--Select * From TBLHareket Where URUN=1

--Update TBLURUNLER Set URUNSTOK = URUNSTOK - (Select Sum(Adet) From TBLHAREKET Where URUN=10) Where URUNID=10

--Create Table KASA
--(
--TOPLAM decimal(18,2)
--)

--Insert Into TBLKASA Values (0)

--SElect * From TBLKASA

--Update TBLKASA Set Toplam = (Select Sum(TUtar) From TBLHAREKET)
--Use SatisVT

--Create Table TBLSAYAC
--(
--ISLEM int
--)

--Insert Into TBLSAYAC Values (0)

--Update TBLSAYAC  Set ISLEM = (Select Count(*) From TblHAREKET)4

--Create Trigger ISLEMARTIS
--ON TBLHAREKET
--AFTER INSERT
--AS
--Update TBLSAYAC SET ISLEM = ISLEM+1

--Create TAble TBLTOPLAMKATEGORI
--(
--ADET tinyint
--)

--UPDATE TBLTOPLAMKATEGORI SET ADET = (Select Count(*) From TBLKATEGORI )

--Create Trigger KATEGORIARTIS
--ON TBLKATEGORI
--AFTER INSERT
--AS
--UPdate TBLTOPLAMKATEGORI SET ADET+=1

--Create TRigger KATEGORIAZALIS
--ON TBLKATEGORI
--AFTER DELETE
--AS
--Update TBLTOPLAMKATEGORI SET ADET-=1


--Create View Test1
--As
--Select * From TBLKATEGORI

--SElect * From Test1

--Select * From Test3

--Use Northwind
--Select * From Products

--Select * From Products Where CategoryID = (Select CategoryID From Categories Where CategoryName = 'SeaFood') and UnitsInStock>20
--and SupplierID= (Select SupplierID From Suppliers Where City ='Osaka')

--Create Procedure Test1
--As
--Select * From Orders Where EmployeeID In (Select EmployeeID From Employees Where City = 'London')
--and ShipVia=3 and ShipCountry='France'

--Execute Test1

--Create View View1
--As
--Select OrderID, CompanyName, FirstName + ' ' + LastName as 'Employee', OrderDate,ShipName,ShipCity,ShipCountry From Orders
--Inner Join Customers ON Orders.CustomerID = Customers.CustomerID
--Inner Join Employees ON Orders.EmployeeID = Employees.EmployeeID

--Select * From Invoices

--Select * From View2

--CustOrderHist ANATR

--Declare @sayi int
--Set @sayi =24
--Select @sayi

--Declare @kisi varchar(20)
--Set @kisi ='Murat'
--Select @kisi

--Declare @sayi1 int, @sayi2 int, @toplam int
--Set @sayi1 =20
--set @sayi2 = 30
--set @toplam =@sayi1+@sayi2
--Select @toplam

--Declare @sinav1 float, @sinav2 float, @sinav3 float, @ortalama float
--Set @sinav1 = 85
--Set @sinav2 = 77
--Set @sinav3 = 80
--Set @ortalama = (@sinav1+@sinav2+@sinav3)/3

--Select @ortalama as 'Ortalama'

--Declare @sayi int, @birler int, @onlar int, @yuzler int, @toplam int
--Set @sayi = 456
--Set @birler = @sayi%10
--Set @onlar = (@sayi/10) %10
--Set @yuzler = @sayi/100
--Set @toplam = @birler+@onlar+@yuzler

--SELECT @birler,@onlar,@yuzler, @toplam

--Use SatisVT

--Declare @bakiye int
--Set @bakiye= (select Max(MUSTERIBAKIYE) From TBLMUSTERI)
--Select @bakiye

--Declare @stok int
--Select @stok = max(Urunstok) from TBLURUNLER
--Select * From TBLURUNLER Where URUNSTOK = @stok

--SELECT @@SERVERNAME,@@ERROR,@@DEFAULT_LANGID,@@LANGUAGE,@@MAX_CONNECTIONS,
--@@MAX_CONNECTIONS,@@MICROSOFTVERSION,@@IDENTITY

--print 'Merhaba'
--Declare @s1 int, @s2 int, @sonuc int
--Set @s1 =4
--Set @s2 =5
--Set @sonuc = @s1*@s2
--print 'Çarpým: '
--print @sonuc

--Declare @kisiler table
--(
--KisiID int identity(1,1),
--KisiAd varchar(10),
--KisiSehir varchar(15)
--)
--Insert Into @kisiler (KisiAd,KisiSehir) values ('Ali','Malatya')
--SElect * From @kisiler

--if(10<5)
--print 'merhaba'
--else
--print 'selam'

--if (select sum(urunstok) from tblurunler) >100
--print 'Toplam Ürün Sayýsý 100den büyüktür'
--else
--print 'Deðil'

--Declare @urun varchar(5)
--Set @urun = (Select Sum(URUNSTOK) From TBLURUNLER)
--if @urun>100 
--print 'Toplam Ürün Sayýsý:' + @urun + ' --> '+  '100`den Büyüktür'
--else
--print 'Toplam Ürün Sayýsý: ' + @urun +' --> ' +  '100`den KÜçüktür'

--SElect URUNAD,URUNMARKA,URUNDURUM=
--Case URUNDURUM
--WHEN '1' THEN 'ÜRÜN VAR'
--WHEN '0' THEN 'ÜRÜN YOK'
--END
--From TBLURUNLER

--Select URUNAD, URUNMARKA, URUNMARKA,KATEGORI=
--CASE KATEGORI
--WHEN '1' THEN 'LAPTOP'
--END
--FROM TBLURUNLER

--Create Procedure Test4
--AS
--SElect URUNAD,URUNMARKA,URUNSTOK, URUNSTOK=
--CASE
--WHEN URUNSTOK >=1 AND URUNSTOK<=5 THEN 'Kritik Seviye'
--WHEn URUNSTOK>5 THEN 'Stok Yeterli'
--END
--From TBLURUNLER

--Test4

--Declare @sayac int
--set @sayac = 1
--while @sayac <=5
--begin
--print 'Merhaba'
--set @sayac+=1
--end

--declare @i int
--set @i = 1
--while @i<=10
--begin
--print @i
--set @i+=1
--end

--declare @sayac int, @toplam int
--set @sayac =1
--set @toplam =0
--while @sayac <=10
--begin 
--set @toplam = @toplam + @sayac
--set @sayac+=1
--end
--print @toplam


--While (Select AVG(URUNSATISFIYAT-URUNALISFIYAT) From TBLURUNLER Where KATEGORI =2) <=450
--begin
--Update TBLURUNLER Set URUNSATISFIYAT += URUNSATISFIYAT*10/100
--end

--While (Select Sum(URUNSTOK) from TBLURUNLER) <=200
--Begin
--Update TBLURUNLER Set URUNSTOK+=1
--End

--Select Sum(URUNSTOK) as 'Toplam Stok' From TBLURUNLER

--Waitfor Delay '00:00:07'
--SElect * From TBLURUNLER

