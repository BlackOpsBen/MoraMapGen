---
title: Generation Options
uid: generation-options
---
# Generation Options
![Generation options on MorMapGen inspector](../../images/generation-options/Generation%20Options.png)

## "Generate Map" Button
Generates a map in the editor based on your settings. This will clear any existing map first.

## "Clear Map" Button
Deletes the existing map and clears all baked data.

## "Bake to Prefab" Button
Saves a new prefab asset. The GameObject that the MoraMapGen component is attached to becomes the root of the new prefab. If a prefab already exists with the same name in the same location, a prefab variant will be made.

## "Generate On Awake" Toggle
When turned on, the map will generate at runtime on Awake(). If there is already a map, it will clear it first.