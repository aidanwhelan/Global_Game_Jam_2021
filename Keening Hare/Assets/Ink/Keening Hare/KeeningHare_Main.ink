- THE KEENING HARE: A CANDLE-LIT FOLKTALE
- One story is never enough. Though I pleaded that she read me another, my mother refused, for every page cost her dearly in candle wax.
- ‘Tomorrow,’ she promised, ‘I will read you the frightful story of the Keening Hare, who lives in these very woods’. With the book of fables under her arm, she snuffed out the tapers and closed the door.
- But I couldn’t wait. Mad with curiosity and unwilling to wait until the next evening, I resolved to seek out the Keening Hare myself. One way or another, I was going to get that story.

-> MAIN_JUNCTION

=== MAIN_JUNCTION ===
* [Enter The Riverbed]
-> The_Riverbed_Entrance
* [Enter The Hollow]
-> The_Hollow_Entrance
* [Enter The Henge]
-> The_Henge_Entrance
* ->
    I made it to the Riddling Tree. 
    ->Endgame_Chapter

////////////////////////////////////////////////////////////////////////////////////////
// AREA: THE RIVERBED //////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////
=== The_Riverbed_Entrance ===
// Introduction
I heard the soft gurgle of a river, and soon came upon a swiftly-flowing riverbed.

//Items

//ITEM 1
* I saw a half-eaten orange.
I decided to take it with me. I might get hungry later.
-> The_Riverbed_Entrance  //Go to The_Riverbed_Entrance

//ITEM 2
* I saw a fisherwoman, whistling as she sat on the shore.
She saw me, too. ‘Hello there, child! What a fine night—I’m after a monstrous trout in these waters, but it won’t bite for nothin’. You wouldn’t have any special bait, would you?’
    //IF ORANGE
    * * IF orange: I gave her a half-eaten orange.
    The fisherwoman’s eyes lit up. ‘Yes, yes, these will do nicely.’ She speared the orange with a fishing hook and turned back to me.
    Thank you kindly, child. I want you to have this.’ From her tackle box, she pulled a shiny silver pocket watch. ‘It don’t tell time too good no more, but it sure looks pretty.’
    -> The_Riverbed_Entrance
    //IF BERRIES
    * * IF berries: I gave her some of the red berries.
    The fisherwoman grimaced. ‘Bit small, but I suppose it’s worth a gander.’
    ‘Thanks, I guess. Here, um, here’s something for you.’ From her tackle box, she pulled a shiny silver pocket watch. ’It don’t tell time too good no more, but it sure looks pretty.’
    -> The_Riverbed_Entrance
    //IF FUNGI
    * * IF fungi: I gave her some of the glowing fungi.
    The fisherwoman drew back in fear. ‘Where did you get those? Give them to me.’
    She snatched the mushrooms away from me. ‘Get out of here. I don’t wanna see you around here again, you hear?’
    -> The_Riverbed_Entrance
    //IF NO FOOD
    * * ‘I’m sorry, I don’t have any food.’
    The fisherwoman grunted. ‘Nothin’ for us to talk about, then.’ And she fell silent.
    -> The_Riverbed_Entrance

//ITEM 3
* I saw my reflection in the water.
Curious, I got closer. I wanted a better look.
//IF BRIGHT
IF bright: I leaned over the water, and my reflection stared back at me. When I looked closely at the bottom of the lake, I thought I saw a skull… but it was probably just a rock. 
//IF DIM
IF dim: I leaned over the water, and my reflection stared back at me. After a moment, it grinned at me, teeth glinting… green? Startled, I stumbled backwards.
//IF MOONLIGHT
IF moonlit: I leaned over the water, and my reflection stared back at me. In the blink of an eye, I saw the visage of a giant hare in place of mine—then it was gone, as quickly as it came. Shocked, I stumbled away from the river.
-> The_Riverbed_Entrance

//ITEM 4
* I saw a frog sitting on the shore, reading a tiny book.
When I approached, the frog leapt into the air, startled.
‘Get lost!’ it shrieked. I tried to speak with it, but it hopped away, mumbling about trespassers.
-> The_Riverbed_Entrance

//ITEM 5
* I saw a toy pistol.
When I picked it up, I saw it was completely rusted on one side. I wondered who it belonged to.
-> The_Riverbed_Entrance

//ITEM 6
* I saw an old-timey record sticking out of the mud.
When I pulled on it, I realized it was only half of a record—someone had broken it cleanly down the middle. I decided to take it with me anyway.
-> The_Riverbed_Entrance

//ITEM 7
* I saw something small and shiny in the water.
Bending down to pick it up, I saw it was a silver locket. Inside, there was a picture of a happy young girl, her hair tied back with a ribbon. She looked about my age. I put it in my pocket.
-> The_Riverbed_Entrance

//ITEM 8
* I saw a small stone with a hole in the center.
//IF BRIGHT
IF bright: I held it up to my eye and looked into the woods, but all I saw were trees.
//IF DIM
IF dim: I held it up to my eye and looked into the woods, but all I saw were trees.
//IF MOONLIGHT
IF moonlit: I held it up to my eye and looked into the woods. I thought I saw a giant hare bounding through the trees, but when I blinked, it was gone.
-> The_Riverbed_Entrance

//LEAVE OPTION
* LEAVE: I chose to leave the Riverbed and keep walking along the path. ->MAIN_JUNCTION  //fallback choice if all other options are used

////////////////////////////////////////////////////////////////////////////////////////
// AREA: THE HOLLOW ////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////
=== The_Hollow_Entrance ===
// Introduction
The path led me to a peaceful hollow, at the center of which lay a lonely tree stump.

//Items

//ITEM 1
* I saw an empty tinderbox.
I opened it, and inside I found a note written in a language I didn’t understand.
-> The_Hollow_Entrance  //Go to The_Hollow_Entrance

//ITEM 2
* I saw a bush covered in small red berries.
My mother told me never to eat berries from the woods, but I stuck some in my pocket just in case. (receive berries)
-> The_Hollow_Entrance

//ITEM 3
* I saw a pair of round and wiry spectacles.
The lenses were tinted green. I put them on, but they blurred my surroundings so much that I got a headache.
-> The_Hollow_Entrance

//ITEM 4
* I saw a tiny pair of black boots.
They were too small for any person to wear, even a child.
-> The_Hollow_Entrance

//ITEM 5
* I saw a large axe leaning against a tree.
It glinted in the moonlight. I tried to pick it up, but I couldn’t even lift it.
I heard footsteps behind me, and when I turned around I saw a huge man with a long, red beard.
‘Gee, thanks for finding my axe, kid! You didn’t see where the rest of my tree went, did ya?’
    * * ‘I took it.’
    The man guffawed. ‘You couldn’t even lift that axe there, kid. Must’a been someone else.’
    -> The_Hollow_Entrance
    * * ‘I didn’t see it.’
    The man’s brow wrinkled. ‘Couldn’t just walk off now, could it?’ He walked away into the trees, shaking his head.
    -> The_Hollow_Entrance
    * * ‘Maybe the Keening Hare took it.’
    The man’s face became grave. ‘You saw the Keening Hare?’
        * * * I lied. ‘Yes. He was just here.’
        The man shuddered, snatching up his axe. ‘Better get out of these woods, kid. It’s not safe out here at night.’ He left the clearing in a hurry.
        -> The_Hollow_Entrance
        * * * I told the truth. ‘No, it was just an idea.’
        The man looked at me sternly. ‘You’d better not scare folks like that. The Keening Hare’s no laughing matter.’ He picked up his axe and retreated into the trees.
        -> The_Hollow_Entrance

//ITEM 6
* I saw an old, weeping traveler sitting on the stump.

IF bright: As I got close, he shielded his eyes from my candle. ‘Move away from me with that light, child!’
IF dim: As I approached him, he looked up at me eagerly, tears still wet on his cheeks, but his spirits sank when he looked at me closer.
‘I thought you were someone else, child. Come, sit beside me. If you give me the rest of your candle, I will tell you a sad story.’
IF moonlight: As I approached him, he cried out: ‘Irene? Is that you?’
    * * IF bright: I moved away. What an eccentric old man.
    -> The_Hollow_Entrance
    * * IF dim: ‘No way! That’s my only light!’
    The man frowned. ‘Then get away from me!’
    -> The_Hollow_Entrance
    * * IF dim: I hesitated. ‘What kind of story?’
    He smiled wistfully. ‘It’s a very sad story.’
        * * * I moved away. ‘I don’t like sad stories.’
        -> The_Hollow_Entrance
        * * * I nodded. ‘Tell it to me, please.’
        The man blew out the candle. ‘Once, long ago, there was a little girl about your age, who loved to play in the woods. Her father warned her never to wander there at night, for it was very dangerous. One day, however, the girl told her father she was looking for some sort of giant rabbit out in the forest.
        ‘Her father laughed and told her to be home by sundown, but once the darkness settled, the girl hadn’t returned home. Her father ran into the woods, where he searched for many years, but he never found her.’
        The old man sniffled. ‘That’s the whole story, child. Leave me now.’ 
        -> The_Hollow_Entrance
    * * IF moonlight: I backed away silently.
    My mother warned me never to speak to crazy old men in the woods at night.
    -> The_Hollow_Entrance
    * * IF moonlight: ‘I’m not Irene,’ I replied.
    The man began to weep again. ‘I’ll never find her…’
    -> The_Hollow_Entrance

//ITEM 7
* IF moonlight: I saw a flickering light in the woods, and then another. Suddenly, I was surrounded by hundreds of fireflies.
They swirled playfully, leading me to the edge of the hollow, where they settled around a gnarled knot in the side of a tree. Inside, I found a bird’s nest with a single, bright blue egg.
    * * I took the egg and carefully stowed it in my pocket. (Receive EGG)
    -> The_Hollow_Entrance
    * * I left the egg in the tree and returned to the center of the hollow. The mother might come back soon.
    -> The_Hollow_Entrance

//ITEM 8
* IF bright or dim: I saw an overturned teacup on the ground.
I went to pick it up, but as I did a mouse scampered out from underneath it, off into the dark. 
-> The_Hollow_Entrance

//ITEM 9
* I saw a collection of old coins, arranged on the ground in a perfect circle.
In the middle, a lizard sat in a tiny chair. It hissed at me when I came near.
-> The_Hollow_Entrance

//LEAVE OPTION
* LEAVE: I chose to leave the Hollow and keep walking along the path. ->MAIN_JUNCTION  //fallback choice if all other options are used

////////////////////////////////////////////////////////////////////////////////////////
// AREA: THE HOLLOW ////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////
=== The_Henge_Entrance ===
// Introduction
I tripped on a rotting log and stumbled. When I regained my balance, I found the canopy had thinned to a nothing, and I stood in plain view of the sky. Beneath the moon, the stars, and the glowering clouds stood a ring of great stones.

//Items

//ITEM 1
* I saw a slingshot.
A gnarled stick that forked at one end. The elastic was old and fraying. When I held it in my hand, I felt like a hunter from a bygone era.
Suddenly, I heard a rustling in the bushes.
    * * I snatched a pebble and shot into the undergrowth.
    The thicket fell silent. (RESULT: Keening Hare dies or flees. No final conversation.)
    -> The_Henge_Entrance
    * * ‘Hello?’
    The thicket fell silent.
    -> The_Henge_Entrance
    * * I stayed very still.
    The rustling slowly grew more distant. Did I see a flash of hare’s fur?
    -> The_Henge_Entrance

//ITEM 2
* I saw a scrap of paper in an unfamiliar language.
A scrap of paper that looked like it had been torn from some old chronicle or prayerbook.
IF Druidic: Suddenly, the words swam on the page and made themselves legible to me. They read: ‘...amongst the constellations. To consecrate our altars in the Keening ritual, we must spill the blood of a hare, for only their wails are loud enough to pierce the heavens’. 
IF Not Druidic: It was in a language that I had never seen before.
-> The_Henge_Entrance

//ITEM 3
* I saw a clay cup, chipped and brittle.
As I lifted it, I realised it was full of small, bleached bones, each engraved with unique markings. I had heard enough folktales to know that these were auguring lots, used to tell the future.
    * * I cast them across the ground.
    They made a neat pattern, but I couldn’t make anything out about my future. I guess it’s in my hands.
    -> The_Henge_Entrance
    * * I replaced the cup.
    As my eye returned to the spot where I found the cup, a shock ran through me. There was a snake. ‘Ssssay, do you know where an old no-foot could find a midnight sssssnack?’
        * * * ‘No, sorry’.
        ‘I sssssee’. The snake slithers away, muttering to itself. 
        -> The_Henge_Entrance
        * * * I screamed and kicked the snake away.
        ‘Ow, that hurtssssss!’ the snake protests, its voice receding into the long grass. 
        -> The_Henge_Entrance
        * * * ‘Sure — have this!’
            * * * * IF orange: I gave the snake a half-eaten orange.
            ‘Thankssssss’. 
            -> The_Henge_Entrance
            * * * * IF egg: I gave the snake a bright blue egg.
            The snake’s eyes widened. ‘You are a friend to the no-footssss, wanderer.’ 
            -> The_Henge_Entrance
            * * * * IF fungi: I gave the snake some glowing fungi.
            The snake’s eyes began to spin like pinwheels. ‘Far out, ssssslicker’. He slithered away, dizzy but content. 
            -> The_Henge_Entrance
            * * * * IF can: I gave the snake a can of inoffensive food.
            The snake turned up the slits of its nose. ‘Pleasssse,’ he said. ‘We ssssnakes have ssstandardss’. Not so inoffensive after all.
            -> The_Henge_Entrance

//ITEM 4
* I saw an ornate obelisk.
In one of the obelisks, I thought I made out a carving. On inspection, it seemed to be in the shape of a hare with blood dripping down its neck.
IF moonlight: Lit only by the pale fire of the moon, the stones began to cast strange shadows. The moon high in the sky, its wan light the obelisks seemed to point clearly to a specific path, the wan light piercing the thick treeline.
IF bright or dim: (RETURN TO HENGE ENTRANCE)
    * * Follow the path.
    Following the path, I reached an overgrown stone ruin. As I stepped inside, I saw that it was lined with small skulls. What was this place?
    IF field guide:  I recognised the shape of the skulls from the field guide. These were all hares. Did the Keening Hare do this?
    IF Druidic: My eye caught on glyphs carved in the stone; for an instant, it was if I could see through the eyes of an ancient druid, and the word revealed itself to me: ‘KEENING’.
    IF not field guide OR Druidic: IF neither of the above: Dread flooded my body. None of this made any sense — I had to get out. I turned and sprinted back towards the henge.
    -> The_Henge_Entrance

//LEAVE OPTION
* LEAVE: I chose to leave the Hollow and keep walking along the path. ->MAIN_JUNCTION  //fallback choice if all other options are used

        

=== Endgame_Chapter ===
The End.
-> END