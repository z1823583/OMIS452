//**compound query 1 - Shows PartID with Make and Model from Vehicles Table.**//
Select parts.PartID, Vehicles.Make, Vehicles.Model
from parts
where PartID > 1
RIGHT JOIN Vehicles ON parts.Model = vehicles.Model  
ORDER BY `parts`.`PartID`  DESC
