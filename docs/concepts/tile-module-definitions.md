# Tile Module Definitions
A Tile Module Definitions asset defines which prefabs are used to construct the tiles that make up the map. See Create Module prefabs.

For each of the module prefab categories, you can specify as many prefabs as you want, and they will be randomly selected when spawning objects. This adds visual variation to your maps.

## Creating a Tile Module Definitions asset
To create a new Tile Module Definitions asset, right click in your Project Assets and select “Create/MoraMapGen/Tile Module Definition.”
## Defining the Tile Module Definitions
Generally you will want at least 1 prefab assigned to each category, but they aren’t required.
![Tile Module Definitions inspector](../../images/complete-setup/TileModuleDefinitionSOInspector.PNG)

### Floor A
Used where the sprite templates have room pixels (red by default) and wall pixels (blue by default). Eg: Main floor in rooms, and under walls in rooms and corridors.
### Floor B
Used where the sprite templates have corridor pixels (black by default), Eg: Main paths in corridors and the entrances of rooms.
