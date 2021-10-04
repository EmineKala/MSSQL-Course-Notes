--Create Database KUTUPHANEYENI
--Create Table TBLUYELER
--(
--UYEID INT IDENTITY(1,1) PRIMARY KEY,
--UYEAD VARCHAR(20),
--SOYAD VARCHAR(20),
--BOLUM VARCHAR(30)
--)

--CREATE TABLE TBLYAZAR
--(
--YAZARID INT IDENTITY(1,1) PRIMARY KEY,
--YAZARAD VARCHAR(20),
--YAZARSOYAD VARCHAR(20)
--)

--CREATE TABLE TBLKITAP
--(
--KITAPID INT IDENTITY(1,1) PRIMARY KEY,
--KITAPAD VARCHAR(20),
--YAZAR INT,
--SAYFA VARCHAR(4),
--YAYINEVI VARCHAR(30),
--DURUM BIT
--)

--CREATE TABLE TBLEMANET
--(
--EMANETID INT IDENTITY(1,1) PRIMARY KEY,
--KITAP INT,
--UYE INT,
--ALISTARIH DATE,
--IADETARIH DATE

--)

--CREATE TABLE TBLSTOK
--(
--TOPLAMKITAP INT
--)

--Insert Into TBLKITAP values ('Satranç', 1 ,'65','Güneþ',1)

--Select Count(*) As 'Toplam' From TBLKITAP

--Declare @stok int
--Set @stok = (select Count(*) from TBLKITAP)
--Insert Into TBLSTOK(TOPLAMKITAP) Values (@stok)

--Select YAYINEVI, Count(*) As 'Toplam' From TBLKITAP Group By YAYINEVI

--Select * From TBLKITAP Where YAZAR IN (Select YAZARID From TBLYAZAR Where YAZARAD = 'Jules' and YAZARSOYAD='Verne' )

--Create Procedure EMANET(@yayin varchar(20))
--As
--Select KITAPAD, UYEAD+ ' '+ SOYAD As 'AD - SOYAD', ALISTARIH,IADETARIH From TBLEMANET
--Inner Join TBLKITAP ON TBLEMANET.KITAP = TBLKITAP.KITAPID
--Inner Join TBLUYELER ON TBLEMANET.UYE = TBLUYELER.UYEID
--Where KITAP IN (Select KITAPID From TBLKITAP Where YAYINEVI = @yayin)

--Execute EMANET 'Mars'

--Create Trigger StokArt
--On TBLKITAP
--After Insert
--As
--Update TBLSTOK Set TOPLAMKITAP =TOPLAMKITAP+1


--Select * From View1

--Select * From TBLEMANET Where ALISTARIH <= '2020-06-03'

--Select (UYEAD + ' ' + SOYAD) As 'AD SOYAD' ,DATEDIFF(DAY, ALISTARIH,IADETARIH) As 'Fark' from TBLEMANET
--Inner Join TBLUYELER ON  TBLEMANET.UYE = TBLUYELER.UYEID

--Insert Into TBLEMANET(KITAP,UYE) values (5,3)

--Select * From TBLEMANET Where IADETARIH Is Null

--Select * From TBLEMANET Where UYE  In (Select UYEID From TBLUYELER Where BOLUM='Yazýlým')

--Select * From TBLYAZAR
--Left Join TBLKITAP
--On TBLYAZAR.YAZARID = TBLKITAP.YAZAR

--Select Count(*) As 'toplam' from TBLEMANET Where UYE In (Select UYEID from TBLUYELER where BOLUM='Yazýlým' )

--Select Count(DISTINCT(BOLUM)) from TBLUYELER 

--Select * From TBLKITAP Where KITAPAD Like '%a%'

--Select DateDiff(Day,MIN(ALISTARIH),MAX(ALISTARIH)) from TBLEMANET

--Select * From TBLUYELER Where Not BOLUM ='Endüstri'

--Declare @isim varchar(20)
--Set @isim = (Select KITAPAD from TBLKITAP where KITAPID =5)
--print @isim

--Declare @sayi1 int, @sayi2 int, @toplam int, @fark int, @carpim int, @bölüm decimal(18,2)
--Set @sayi1 =24
--Set @sayi2 =9
--Set @toplam = @sayi1 + @sayi2
--Set @fark = @sayi1 - @sayi2
--Set @carpim = @sayi1 * @sayi2
--Set @bölüm = @sayi1 / @sayi2
--print '------------------------'
--print ' '
--print 'Toplam: ' +cast(@toplam as varchar)
--print 'Fark: ' +cast (@fark as varchar)
--print 'Çarpým: ' + cast(@carpim as varchar)
--print 'Bölüm: '  + cast(@bölüm as varchar)

--Declare @sayac int, @toplam int
--Set @sayac = 1
--Set @toplam = 0
--while @sayac<=10
--begin
--Set @toplam = @toplam + @sayac
--Set @sayac+=1
--end

--print @toplam

--Select Left(YAZARAD,1) + '.' + YAZARSOYAD From TBLYAZAR



