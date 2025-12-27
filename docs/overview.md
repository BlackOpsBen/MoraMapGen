# Overview
## How This Works
This tool creates unique level layouts consisting of rooms and corridors using a procedural generation technique called "Wave Function Collapse" (WFC).
A set of sprites defines all the possible options of room and corridor pieces.

![Sprite sheet](../images/overview/Sprite_Templates.png)

These sprites are then placed in a grid to create all kinds of layouts:

| ![Example layout 1](../images/overview/Example_Layout_1.PNG) | ![Example layout 2](../images/overview/Example_Layout_2.PNG) | ![Example layout 3](../images/overview/Example_Layout_3.PNG) | ![Example layout 4](../images/overview/Example_Layout_4.PNG) |
| ![Example layout 5](../images/overview/Example_Layout_5.PNG) | ![Example layout 6](../images/overview/Example_Layout_6.PNG) | ![Example layout 7](../images/overview/Example_Layout_7.PNG) | ![Example layout 8](../images/overview/Example_Layout_8.PNG) |

Then prefabs are placed to turn the layout into a useable level:

![Example comparisson of sprite templates vs skinned layout](../images/overview/Example_Map_A-B.gif)
![Example perspective view](../images/overview/Example_Perspective.PNG)

The generation process follows these steps:
1. WFC Algorithm: Generates a 2D layout using sprite templates.
2. Area Assignment: Assigns Area Definitions to rooms and corridors.
3. Module Spawning: Places 3D module prefabs (walls, floors, ceilings, and doors.)
4. Prop Placement: Spawns decorative and functional prop prefabs.
5. Baking: Creates the BakedMap data structure for runtime access.

## File Structure
![File structure in assets folder](../images/overview/File_Structure_Main.png)

### Demo Folder
Contains various example scenes that are ready for you to simply press "Play" to see them in action.
### Icons folder
Contains the images used as custom icons to differentiate the different ScriptableObject and Monobehaviour assets for easier readability in the editor.
### Resources
Contains a sprite sheet that is used to determine the possible tile templates for generating rooms and corridors. You can edit the sprite sheet to add or remove tiles to suit your needs.
### Scripts
Contains all of the code for this asset. One of the only scripts you will need to use is "MoraMapGen" which is a Monobehaviour that you add to your scene.
![Scripts folder file structure](../images/overview/File_Structure_Scripts.png)
### Tests
Contains Unit Tests that can be run via the Test Runner window to validate the generation system.

## Object Structure
The MoraMapGen system uses a hierarchical asset structure:
MoraMapGen component > Settings asset > Area Options asset > Area Definition assets > Tile Module Definition assets > Module prefabs

## Data Flow
### Generation Time:
The system creates a GenMap containing all generation data.
### After Generation:
The system "bakes" the map into a BakedMap for efficient runtime access.
### Runtime Access:
Use MoraMapGen.BakedMap to access rooms, corridors, waypoints, and more.