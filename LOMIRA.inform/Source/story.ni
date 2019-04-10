"LOMIRA" by kroberts21


key is a thing. Player is carrying key.

HOME is a room.
Backpack is a portable container in HOME. It is closed and openable. It is wearable. The description is "A simple brown canvas backpack.".
Metal Bar is in Backpack.
Knife is in Backpack.
Canvas Sheet is in Backpack.
Rope is in Backpack.

space suit is in Backpack. space suit is wearable.
[helmet is a thing in Backpack. helmet is wearable. It is an open container.]

Understand "connect [thing] to [thing]" and "tie [thing] to [thing]" as combining it with.
Combining it with is an action applying to two things.

The Badlands is a room. The Badlands is south of HOME.
Cave Wall is a room. Cave Wall is south of The Badlands.

City Entrance is a room. City Entrance is north of HOME.
Banner is an undescribed thing in City Entrance. The description is "WELCOME TO[line break]EL TELLAGA TYNE".

[getting oxygen test 1]
Molecular Splitter is a container in City Entrance. It is open.
a coin is a thing in City Entrance.
oxygen tank is an undescribed thing in City Entrance. It is wearable.
Understand "put [thing] in [thing]" as putting it into.
Putting it into is an action applying to two things.

After putting:
	If the player's command matches "put coin in splitter" or the player's command matches "put coin in molecular splitter":
		move oxygen tank to player;
		say "breathe yes haha[line break]";
		continue the action;
	Otherwise:
		say "This isn't a valid piece of currency. Try putting in the coin.".

Well is a room. Well is southwest of City Entrance and west of HOME.
a bucket is a thing in Well. it is an open container. The description is "A rusty metal bucket".
xwell is an undescribed container in Well. It is open. The description is "[if player has space suit]the walker was right. [end if]helmet".
helmet is a thing in xwell. helmet is wearable.
Understand "well" as xwell.
Understand "look in [thing]" as examining.

Lever is a thing in Well.
Button is a thing in Well.

[fishing test 2]

[connecting the bucket to the well]
After combining:
	If the player's command matches "tie bucket to rope" or the player's command matches "tie rope to bucket":
		If rope is in backpack:
			say "You might want to tie it to the well with something.";
			continue the action;
		Otherwise:
			say "Now you can connect the bucket to the well.";
			move Rope to xwell;
			continue the action;
	If the player's command matches "connect bucket to well":
		If player is holding Rope or Rope is in Backpack:
			say "tie";
		Otherwise:
			say "You connect the bucket to the well.".

[turning the crank to get the helmet]
very very dark hole is a room. It is below Well.
After pushing:
	If the player's command matches "push button":
		If bucket is in very very dark hole:
			say "helmet in bucket[line break]";
			move bucket to Well;
			move helmet to bucket;
		If bucket is in Well:
			say "You push the button, and the bucket goes into the well[line break]";
			move helmet to very very dark hole;
			move bucket to very very dark hole;

		
[Test me with "put on backpack/w/tie bucket to rope/connect bucket to well".]
Test me with "put on backpack/w/open backpack/take rope/tie bucket to rope/connect bucket to well".
[CODE FROM TONIC]


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