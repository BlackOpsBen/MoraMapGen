# Area Definitions
An Area Definition asset is how you create specific or generic rooms and corridors. The name of the asset is what will be used in the game and accessible via the API.
Examples:
- Unique room: “Throne Room” (appears exactly once)
- Common room: “Bedroom” (might appear multiple times)
## Creating an Area Definition asset
To create a new Area Definition asset, right-click in your Project Assets and select "Create/MoraMapGen/Area Definition".
## Defining the Area Definition
The Area Definition defines what the area should look like and what props it should contain. At a minimum you must assign a Tile Module Definitions asset.
![Area Definition inspector](../../images/concepts/Area%20Definition%20Inspector.png)

### Tile Module Definitions
This is where you specify which Tile Module Definitions asset is used for this room or corridor. Multiple rooms and/or corridors can use the same Tile Module Definitions while still being unique or common.
Example: The "Bedroom" room might use the same Tile Module Definitions as the "Common Area" corridor.
### Prop Density
Controls the relative density of props in this area. This is a slider from 0 to 1:
- 0 means that only the minimum number of required props will be placed in this area
- 1 means as many props as possible will be placed
- 0.5 means a medium density
### Prop Channel Density Multipliers
A dictionary that allows you to fine-tune prop density per channel. This gives you granular control over specific prop categories within this area.
Example: You might want lots of furniture (density 1.0) but few wall decorations (density 0.3) in a specific room.
### Prop Categories
Area-specific prop placement settings. Use this to define props that should only appear in this specific area.