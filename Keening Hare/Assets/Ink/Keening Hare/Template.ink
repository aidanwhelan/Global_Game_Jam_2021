- Beginning... 
-> MAIN_JUNCTION

=== MAIN_JUNCTION ===
* [Enter Area 1]
-> Area_1_Entrance
* [Enter Area 2]
-> Area_2_Entrance
* ->
    I made it to the Riddling Tree. 
    ->Endgame_Chapter

//Template: Area 1
=== Area_1_Entrance ===
Area Introduction Text goes here...

* [Item 1]
Consequence 1
    * *  [Sub-Choice 1.1]
        Consequence 1.1
        -> Area_1_Entrance  //Go to Area_1_Entrance
* [Item 2]
Consequence 2
-> Area_1_Entrance
* [Item 3]
Consequence 3
-> Area_1_Entrance
* [Item 4]
Consequence 4
-> Area_1_Entrance
* -> 
    There is nothing else to explore here.
    I chose to keep walking along the path. ->MAIN_JUNCTION  //fallback choice if all other options are used


//Template: Area 2
=== Area_2_Entrance ===
Area Introduction Text goes here...

* [Item 1]
Consequence 1
    * *  [Sub-Choice 1.1]
        Consequence 1.1
        -> Area_2_Entrance  //Go to Area_2_Entrance
* [Item 2]
Consequence 2
-> Area_2_Entrance
* [Item 3]
Consequence 3
-> Area_2_Entrance
* [Item 4]
Consequence 4
-> Area_2_Entrance
* -> 
    There is nothing else to explore here.
    I chose to keep walking along the path. ->MAIN_JUNCTION  //fallback choice if all other options are used
        

=== Endgame_Chapter ===
The End.
-> END