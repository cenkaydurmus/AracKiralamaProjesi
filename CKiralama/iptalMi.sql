Create trigger İptalTarihi_Olustur
on Tbl_AracRezervasyon
after update
as
begin
declare @iptal_txt varchar(10)
declare @rezId int


select @rezId=RezervasyonID,@iptal_txt=iptalMi from inserted


if @iptal_txt='Evet'
begin
update Tbl_AracRezervasyon set iptalTarihi=getdate() where RezervasyonID=@rezId
end
end