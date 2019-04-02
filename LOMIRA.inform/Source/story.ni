"LOMIRA" by kroberts21


key is a thing. Player is carrying key.

HOME is a room.
Backpack is a portable container in HOME. It is closed and openable. The description is "A simple brown canvas backpack.".
Metal Bar is in Backpack. It is not fixed in place.
Knife is in Backpack. It is not fixed in place.
Canvas Sheet is in Backpack. It is not fixed in place.

[puzzle 1: SPACE SUIT test 1]
space suit is in Backpack. space suit is wearable. It is not fixed in place.
helmet is a thing in Backpack. helmet is wearable. It is an open container. It is not fixed in place.
oxygen tank is in Backpack. oxygen tank is wearable. It is an open container. It is not fixed in place.

Understand "connect [thing] to [thing]" as inserting it into.
Connecting it into is an action applying to two things.

An every turn rule:
	If player is in The Badlands:
		If helmet is in oxygen tank or oxygen tank is in helmet:
			if player is wearing space suit and player is wearing helmet and player is wearing oxygen tank:
				continue the action;
			if player is not wearing space suit:
				end the story finally saying "Your body froze up and you died lol";
		if player is not wearing space suit or player is not wearing helmet or player is not wearing oxygen tank:
			end the story finally saying "You can't breathe".

The Badlands is a room. The Badlands is south of Home.
Cave Wall is a room. Cave Wall is south of The Badlands.
City Entrance is a room. City Entrance is north of HOME.
Banner is an undescribed thing in City Entrance. The description is "WELCOME TO[line break]EL TELLAGA TYNE".

Well is a room. Well is southwest of City Entrance and west of HOME.
Bucket is a thing in Well. It is not fixed in place.
xwell is an undescribed thing in Well. It is fixed in place. The description is "helmet".
Understand "well" as xwell.
Understand "look in [thing]" as examining.
[Helmet is an undescribed thing in Well.]

Shop is a room. Shop is southeast of City Entrance and east of HOME.


SURFACE is a room. SURFACE is north of City Entrance.
Generator is a room.
trapdoor is a door. it is above Generator and below Cave Wall. it is locked and lockable. key unlocks trapdoor.
The The Core is a room. The Core is below Generator.