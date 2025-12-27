# Room Shapes
Room Shape assets define the shape of rooms that can be generated when using the Chunks or Hybrid Room Creation Mode in the Settings. See Room Creation Mode.
## Creating a Room Shape asset
To create a new Room Shape asset, right-click in your Project Assets and select "Create/MoraMapGen/Room Shape".
## Defining the Room Shape
1. Set the Room Dimensions (width × height in tiles)
2. Specify the sprite to use for each of the spaces in the grid
![Room shape asset inspector example](../../images/concepts/room-shape.PNG)

The sprites you assign determine what tiles get placed. Empty sprites or wall sprites create non-room areas, while room sprites create the actual room space. You can even 
Important: If a room shape is larger in either dimension than your max chunk size, the room will never get picked unless a merged chunk happens to create a chunk large enough to support the room.