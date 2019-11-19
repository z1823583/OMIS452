//**compound query 1 - Shows PartID with Make and Model from Vehicles Table.**//
Select parts.PartID, Vehicles.Make, Vehicles.Model
from parts
RIGHT JOIN Vehicles ON parts.Model = vehicles.Model
where PartID IS NOT NULL
Order by PartID ASC
