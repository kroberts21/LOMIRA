"LOMIRA" by kroberts21

[Disable take all; code from TONIC]
Rule for deciding whether all includes something: it does not.

Rule for printing a parser error when the latest parser error is the nothing to do error:
	say "mm-mm." instead

key is a thing. Player is carrying key.

HOME is a room.
Backpack is a portable container in HOME. It is closed and openable. It is wearable. The description is "A simple brown canvas backpack.".
metal bar is in Backpack.
knife is in Backpack.
rope is in Backpack.
potato is in Backpack. potato is edible.

The Badlands is a room. The Badlands is south of HOME.
Cave Wall is a room. Cave Wall is south of The Badlands.

City Entrance is a room. City Entrance is north of HOME.
[getting space suit]
A Walker is a male person in City Entrance. The description is "A rather tall man, about six-foot-four, wearing a brown dress shirt, black vest, deep blue jeans, black boots. Lanky too, and his strawberry blond hair goes down to his shoulders in waves. He appears pretty feminine.".
space suit is a thing. Walker is carrying space suit. Understand "spacesuit" as space suit. space suit is wearable.
Understand "talk to [someone]" as talking to.
Talking to is an action applying to one visible thing.
Check talking to: say "[The noun] doesn't reply.".

Understand "offer [someone] [something]" as giving it to.

Instead of talking to Walker:
	say "[one of]'Howdy!'[or]'Hello there!'[at random]
	
	[bold type]Ask him about:[line break]
	- his job[line break]
	- the city[line break]
	- his life i guess?[line break]
	- earth[line break]
	- where he got his clothes[line break]".

Instead of asking Walker about something:
	If the player's command matches "ask walker about walkers" or the player's command matches "ask walker about his job" or the player's command matches "ask him about walkers" or the player's command matches "ask him about his job":
		say "'Oh, Walkers like myself are just people who go outside. Y'know, collect-slash-analyze moondust samples, scout for water ice, et cetera. Nerd stuff.'";
	If the player's command matches "ask walker about the city" or the player's command matches "ask him about the city":
		say "'You must not be from around these parts, huh?' He vaguely gestures with an open hand to everything.[line break]
		
		'This is El Tellaga Tyne! Quite a mouthful, yes, I know. One of the older lunar cities, I think. It's been around for several hundred Earth years. And that's all I know, I'm no historian or anything.'";
	If the player's command matches "ask him about his life" or the player's command matches "ask walker about his life":
		say "'Oh! I forgot to introduce myself! How rude of me, I'm so sorry. I'm Fara. I'm about twenty...five, six? Iunno, time flies so fast sometimes. I live around the urban part of the city with my boyfriend, Elair. The sweetest thing, that man is... Ah! You were saying?'";
	If the player's command matches "ask him about earth" or the player's command matches "ask walker about earth":
		say "'Aiiii, that old pile of junk. Information-age peoples gunked it up like a few thousand Earth years ago or something like that. All the smart people got on ships and flew up here. That's how the story goes, I guess.'";
	If the player's command matches "ask him about where he got his clothes" or the player's command matches "ask walker about where he got his clothes" or the player's command matches "ask him about his clothes" or the player's command matches "ask walker about his clothes":
		say "'You like this outfit? I got all this for 60 credits at that thrift store down the road!' He cranes his neck in that general direction. 'Looks like they're closed. Oh well. Hey, you should check it out sometime!'".

Instead of asking Walker for something:
	If the player's command matches "ask walker for space suit" or the player's command matches "ask walker for spacesuit" or the player's command matches "ask him for spacesuit" or the player's command matches "ask him for space suit":
		say "'This might sound like an odd question, but do you happen to have an extra space suit? I'm going to try to fix the generator and find out what's been causing these electrical disturbances lately,' you say.
		
		'Ah yes, I do just so happen to have one, my boyfriend quit his job as a Walker not too long ag--wait, fix the generator?'
		
		He ponders this for a second. 'Oh-kay, I can tell anyone who asks that you're with us, but I'm gonna have to ask for something in return.'
		
		[bold type]Try offering him something in your backpack.".

["BRIBERY"; code from Documentation: §19.3]

The block giving rule is not listed in the check giving it to rules.

Carry out giving (this is the gratitude for gifts rule): improve the mood of the second noun.

Mood is a kind of value. The moods are hostile, suspicious, indifferent, friendly, and adoring. A person has a mood. A person is usually indifferent.

To improve the mood of (character - a person):
	If the mood of character is less than friendly:
		Now the mood of the character is the mood after the mood of the character.

Check giving it to (this is the polite refusal of unwanted objects rule): 
	unless the noun interests the second noun: 
		say "'I'm not really in need of a [the noun] at the moment, but thank you!'" instead.

To decide whether (item - a thing) interests (character - a person): 
    if the character has the item, no; 
    if the item is edible, yes; 
    no.

Instead of showing something to someone: 
	try giving the noun to the second noun.

After giving something to someone:
	If the player's command matches "give walker potato" or the player's command matches "offer walker potato":
		say "'Ah! A potato! Finally, I've been starving all day! Thank you so much!'
		
		[bold type]He takes the potato, and gives you a space suit.";
		move potato to Walker;
		move space suit to player.

[getting oxygen]
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
	If the player's command matches "put key in splitter" or the player's command matches "put key in molecular splitter":
		say "This isn't a valid piece of currency. Try putting in the coin.";
	If the player's command matches "put metal bar in capacitors":
		say "You replace the faulty bar with a new one.";
		move metal bar to Capacitors;
	If the player's command matches "put [something] in backpack":
		say "You put [the noun] in your backpack.";
		move the noun to backpack;
	If the player's command matches "put [something] in bucket":
		say "You put the [the noun] in the bucket.";
		move the noun to bucket.

Well is a room. Well is southwest of City Entrance and west of HOME.
a bucket is a thing in Well. it is an open container. The description is "A rusty metal bucket".
xwell is an undescribed container in Well. It is open. The description is "[if player has space suit]the walker was right. [end if]helmet".
helmet is a thing in xwell. helmet is wearable.
Understand "well" as xwell.
Understand "look in [thing]" as examining.

Handle is a thing in Well.


[FISHING]

Understand "connect [thing] to [thing]" and "tie [thing] to [thing]" as combining it with.
Combining it with is an action applying to two things.
Understand "disconnect [thing] from [thing]" as separating it from.
Separating it from is an action applying to two things.

[connecting the bucket to the well]
After combining:
	If the player's command matches "tie bucket to rope" or the player's command matches "tie rope to bucket":
		If rope is in backpack:
			say "You might want to tie it to the well with something.";
			continue the action;
		Otherwise:
			say "Now you can connect the bucket to the well.";
			move Rope to xwell;
			move bucket to xwell;
			continue the action;
	If the player's command matches "connect bucket to well":
		If player is holding Rope or Rope is in Backpack:
			say "tie[line break]";
		Otherwise:
			say "You connect the bucket to the well.".
After separating:
	If the player's command matches "disconnect bucket from well":
		If bucket is not in xwell:
			say "There is nothing to disconnect the bucket from.";
		Otherwise:
			say "You disconnect the bucket from the well.";
			move rope to player;
			move bucket to player.
			

[push/pull thingy]
very very dark hole is a room.
After pushing:
	If player is holding Rope or Rope is in Backpack:
		say "tie[line break]";
	Otherwise:
		If the player's command matches "push handle":
			say "You push the handle, and the bucket goes into the well[line break]";
			move helmet to very very dark hole;
			move bucket to very very dark hole;
After pulling:
	If player is holding Rope or Rope is in Backpack:
		say "tie[line break]";
	Otherwise:
		If the player's command matches "pull handle":
			say "helmet in bucket[line break]";
			move bucket to Well;
			move helmet to bucket;

SURFACE is a room. SURFACE is north of City Entrance.
Generator is a room.
xgenerator is an undescribed supporter. The description is "". Understand "generator" as xgenerator.

[FIXING THE GENERATOR]
Understand "turn [something] off" and "switch off" as switching off.
Understand "turn [something] on" and "switch on" as switching on.
Surge Protector is in Generator. It is a closed openable container.
On/Off Switch is in Surge Protector. It is a device. It is fixed in place. It is switched on.
Capacitors is in Surge Protector. It is an open container. It is fixed in place.
faulty bar is in Capacitors.

An every turn rule:
	If player is in Generator:
		If the player's command matches "take faulty bar out of capacitors" or the player's command matches "remove faulty bar from capacitors" or the player's command matches "take faulty bar" or the player's command matches "remove faulty bar":
			If On/Off Switch is switched off:
				say "You remove the faulty bar from the capacitors.";
				move faulty bar to player;
			If On/Off Switch is switched on:
				say "You might not want to do that.";
				move faulty bar to Capacitors;
	Otherwise:
		continue the action.

After switching off:
	If the player's command matches "turn switch off" or the player's command matches "switch off":
		say "You switch it off.";
		now On/Off Switch is switched off.
After switching on:
	If the player's command matches "turn switch on" or the player's command matches "switch on":
		If metal bar is in Capacitors:
			say "You switch it on, and the generator works like new.";
			now On/Off Switch is switched on;
		Otherwise:
			say "You switch it on.";
			now On/Off Switch is switched on.
trapdoor is a door. it is above Generator and below Cave Wall. it is locked and lockable. key unlocks trapdoor.

The The Core is a room. The Core is below Generator. "A giant orange crystal".
Crystal is a thing in The Core. Crystal is a supporter.
piece of crystal is a thing on Crystal. Understand "crystal" as piece of crystal.

Instead of taking piece of crystal:
	say "Cautiously, you reach both hands towards the glowing orange piece of the crystal.";
	move piece of crystal to player.

Test one with "put on backpack/w/open backpack/take rope/tie rope to bucket/connect bucket to well/push handle/pull handle/take helmet/e".
Test two with "n/talk to walker/ask him about his life/ask him about his job/ask him for spacesuit/open backpack/take potato/give walker potato".
Test three with "pick up coin/put coin in splitter".
Test four with "put on oxygen tank/put on spacesuit/put on helmet/s/s/s/unlock trapdoor with key/down".
Test five with "open surge protector/turn switch off/x capacitors/take faulty bar out of capacitors/take metal bar/put metal bar in capacitors/turn switch on/down".


[death in space]
An every turn rule:
	If player is in The Badlands or player is in SURFACE:
		If helmet is in oxygen tank or oxygen tank is in helmet:
			if player is wearing space suit and player is wearing helmet and player is wearing oxygen tank:
				continue the action;
			if player is not wearing space suit:
				end the story finally saying "Your body froze up and you died lol";
		if player is not wearing space suit and player is not wearing helmet or player is not wearing oxygen tank:
			end the story finally saying "You can't breathe";
An every turn rule:
	If player is in SURFACE:
		If player is carrying piece of crystal:
			end the story finally saying "YOU WIN".