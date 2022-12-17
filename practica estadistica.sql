use AdventureWorks2019
go

select * from [Person].[Address]
go


/*estadisticas generales*/
dbcc show_statis tics ('Person.Address', 'ix_Address_AddressLine1_AddressLine2_City_StateProvinceID_PostalCode')
go

/*estadisticas header*/
dbcc show_statistics ('Person.Address', 'ix_Address_AddressLine1_AddressLine2_City_StateProvinceID_PostalCode') with stat_header;
go

/*estadisticas vector*/
dbcc show_statistics ('Person.Address', 'ix_Address_AddressLine1_AddressLine2_City_StateProvinceID_PostalCode') with density_vector;
go

/*estadisticas histograma*/
dbcc show_statistics ('Person.Address', 'ix_Address_AddressLine1_AddressLine2_City_StateProvinceID_PostalCode') with histogram;
go

/*ejemplo*/

select * from [Person].[Address] where [AddressLine1] between '2876 bayview ct' and '2031 fox hill loop' ;

select * from [Person].[Address] where [AddressLine1] between '342 old oak highway' and '867 se hazelwood road';

select * from [Person].[Address] where [AddressID] between '1' and '500';

set statistics time on 
go
