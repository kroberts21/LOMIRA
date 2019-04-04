"LOMIRA" by kroberts21


key is a thing. Player is carrying key.

HOME is a room.
Backpack is a portable container in HOME. It is closed and openable. It is wearable. The description is "A simple brown canvas backpack.".
Metal Bar is in Backpack.
Knife is in Backpack.
Canvas Sheet is in Backpack.
Rope is in Backpack.

space suit is in Backpack. space suit is wearable.
helmet is a thing in Backpack. helmet is wearable. It is an open container.
[oxygen tank is in Backpack. oxygen tank is wearable. It is an open container.]

Understand "connect [thing] to [thing]" and "tie [thing] to [thing]" as combining it with.
Combining it with is an action applying to two things.

The Badlands is a room. The Badlands is south of HOME.
Cave Wall is a room. Cave Wall is south of The Badlands.

City Entrance is a room. City Entrance is north of HOME.
Banner is an undescribed thing in City Entrance. The description is "WELCOME TO[line break]EL TELLAGA TYNE".

[getting oxygen test 1]
Molecular Splitter is a container in City Entrance. It is open.
coin is a thing. player is carrying coin.
oxygen tank is an undescribed thing in City Entrance. It is wearable.

An every turn rule:
	If coin is in Molecular Splitter:
		move oxygen tank to player;
		say "breathe yes haha";
		continue the action.

Well is a room. Well is southwest of City Entrance and west of HOME.
Bucket is a thing in Well.
xwell is an undescribed thing in Well. It is fixed in place. The description is "helmet".
Understand "well" as xwell.
Understand "look in [thing]" as examining.
xBar is an undescribed thing in Well. It is fixed in place.
Understand "bar" as xBar.

Crank is a thing in Well.

[fishing test 1]

[CODE FROM TONIC]
[The combining it with action has an object called the Contraption.

Carry out combining it with: 
	say "You tie the [the noun] to the [the second noun].";
	remove the noun from play;
	remove the second noun from play;
	move the Contraption to the player.]

Shop is a room. Shop is southeast of City Entrance and east of HOME.


SURFACE is a room. SURFACE is north of City Entrance.
Generator is a room.
trapdoor is a door. it is above Generator and below Cave Wall. it is locked and lockable. key unlocks trapdoor.
The The Core is a room. The Core is below Generator.

[death in space]
An every turn rule:
	If player is in The Badlands:
		If helmet is in oxygen tank or oxygen tank is in helmet:
			if player is wearing space suit and player is wearing helmet and player is wearing oxygen tank:
				continue the action;
			if player is not wearing space suit:
				end the story finally saying "Your body froze up and you died lol";
		if player is not wearing space suit and player is not wearing helmet or player is not wearing oxygen tank:
			end the story finally saying "You can't breathe";