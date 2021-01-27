Select ContactName Adi,CompanyName SirketAdi, City Sehir from Customers --sağına kolon adını yazarak değiştirebilirsin

Select * from Customers where City = 'Berlin'  -- Berlindeki müşterileri getir

--case insensitive    yanii büyük küçük farketmiyor ;)

select * from Products where CategoryID=1 or CategoryID=3  -- OR demek YA DA demektir sorguda kat_id 1 veya 3 olanları getir demek

select * from Products where CategoryID=1 and UnitPrice>10  -- AND demek VE demektir sorguda kat_id 1 ve fiyatı 10dan büyük olanları getir demek

select * from Products order by CategoryID,ProductName  --order by  sırala demek 

select * from Products where CategoryID=1 order by UnitPrice desc --desc  yüksekten alçağa sırala

select * from Products order by UnitPrice asc --asc  alçaktan yükseğe sırala

select COUNT(*) from Products  --count demek sayısı demek yani sorguda tüm productsların sayısını verir

select CategoryID,COUNT(*) from Products group by CategoryID  --group by yaptığın için her grup için ayrı ayrı count hesaplanıyor

select CategoryID,COUNT(*) from Products group by CategoryID having COUNT(*)<10  --sorgudan tablo içindeki fiyatı 10dan küçükler için
