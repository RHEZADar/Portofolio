--Select *
--From SalesProject..DataSale
--order by 3,4

---Countries With Total Units and TotalAmount
Select Geography, Sum(Cast(Amount as Int)) as TotalAmount, Sum(Cast(Units as Int)) as TotalUnits
From SalesProject..DataSale
Group by Geography
order by TotalAmount, TotalUnits Desc

--Sales Person With Total units and Total Amount
Select Person, Sum(Cast(Amount as Int)) as TotalAmount, Sum(Cast(Units as Int)) as TotalUnits
From SalesProject..DataSale
Group by Person
order by TotalAmount, TotalUnits Desc

-- Name Sales Person by Country
Select Person, Geography, Sum(Cast(Amount as Int)) as TotalAmount, Sum(Cast(Units as Int)) as TotalUnits
From SalesProject..DataSale
where Person Like '%Carla%'
Group by Person, Geography
order by TotalAmount, TotalUnits Desc

--Best sales Person by Country
Select Person, Geography, Max(cast(Amount as Int)) as TotalAmount
From SalesProject..DataSale
where Geography like '%Australia%'
Group by Person, Geography
order by TotalAmount



