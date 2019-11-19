//compound query 1//
Select parts.PartID, Vehicles.Make, Vehicles.Model
from parts
RIGHT JOIN Vehicles ON parts.Model = vehicles.Model  
ORDER BY `parts`.`PartID`  DESC
