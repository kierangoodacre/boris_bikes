boris_bikes
===========

We are building a system that manages bikes that can be rented by users from docking stations and returned there at the end of the rental. The bikes can break while being used, in which case they will not be available for rental after they are returned. There is a garage that can fix broken bikes. A van is used to move broken bikes from the stations to the garage. It can also be used to take fixed bikes back to the station(s). The van, all stations and the garage have fixed capacity, so they cannot take more bikes that they can hold.

CRC CARDS

Boris Bikes
====================

###Class - Bike

Responsibilites             | Collaborators
----------------------------|------------------
Be rented                   | User, Station
Be returned                 | User, Station, Van
Be broken                   | User

### Class - User
Responsibilites     | Collaborators
--------------------|------------------------
Rent                |  Bike, Station
Break               |  Bike
Return              |  Bike, Station

### Class - Station 
Responisibilites        |Collaborators
------------------------|------------------
Receive                 |  User, Van
Eject                   |  Van, Bike, 
Break                   |  User
Return                  |  User, Bike
Rent                    |  User, Bike




### Class - Van 
Responisibilites        |Collaborators
------------------------|------------------
Receive                 | Bike, Station, Garage
Eject                   | Bike, Station, Garage
Holding                 | Bike, Garage
Move                    | Bike, Station, Garage
Fix                     | Garage

### Class - Garage 
Responisibilites        |Collaborators
------------------------|------------------
Receive                 | Van, Station, Bike
Eject                   | Van Station, Bike
Holding                 | Bike, Van
Move                    | Van
Fix                     | Van
