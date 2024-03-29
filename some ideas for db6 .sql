//**compound query 1 - Shows PartID with Make and Model from Vehicles Table.**//
Select parts.PartID, Vehicles.Make, Vehicles.Model
from parts
RIGHT JOIN Vehicles ON parts.Model = vehicles.Model
where PartID IS NOT NULL
Order by PartID ASC

/*co related 1 shows vehicles that have a part associated to them*/
select distinct parts.PartID, parts.Make, parts.Model
from parts
where EXISTS
	(select * 
     from Vehicles
     where parts.Make = Vehicles.Make and Parts.Model = Vehicles.Model)
Order By PartID


-- Shows Vehicles info for Parts that are available in dealership
select Vehicles.VIN, Vehicles.Make, Vehicles.Model, Vehicles.StateOfCar
from vehicles
WHERE vehicles.Make IN (
    	select DISTINCT parts.Make
	from parts
	where parts.make = 'Ford' or parts.make = 'Nissan' or parts.Make = 'Audi'
    );
