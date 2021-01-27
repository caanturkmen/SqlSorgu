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


--MOLA--


select Products.ProductID,Products.ProductName,Products.UnitPrice,Categories.CategoryName  --sınırlama yapıyoruz
from Products inner join Categories   --inner join  tabloları birleştirme anlamına gelir
on Products.CategoryID = Categories.CategoryID   --aynıysa demek
where Products.UnitPrice>10  --fiyatı 10dan büyük olanlar


--DTO 

Select * from Products p inner join [Order Details] od  --inner join sadece eşleşen verileri getirir....
on p.ProductID = od.ProductID     




Select * from Products p left join [Order Details] od  --solda olup sağda olmayanları getir demek
on p.ProductID = od.ProductID  



select * from Customers c inner join Orders o 
on c.CustomerID = o.CustomerID                 --830 sipariş var



select * from Customers c left join Orders o 
on c.CustomerID = o.CustomerID                 --830 sipariş vardı müşterilerde olup siparişte olmayanlarıda getir
                                               --832 çıktı 2 kişi sipariş yapmamış bişi almamış :D
where o.CustomerID is null        --birleştirilen tablodan soldaki tablodaki ürün almamış kişileri yazdır 
                                  --is null    boş demek    NOT: PK ya uyarlanacak hep null



Select * from Products p inner join [Order Details] od  --Birden fazla tabloyu inner join etmek
on p.ProductID = od.ProductID  
inner join Orders o
on o.OrderID= od.OrderID