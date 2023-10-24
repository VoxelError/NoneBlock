data modify entity @s HandItems[0] set from entity @e[predicate=noneblock:munch,limit=1,sort=nearest] Item
kill @e[predicate=noneblock:munch,limit=1,sort=nearest]
tag @s[nbt={HandItems: [{id: "minecraft:coal"}]}] add Coal
tag @s[nbt={HandItems: [{id: "minecraft:iron_ingot"}]}] add Iron
tag @s[nbt={HandItems: [{id: "minecraft:copper_ingot"}]}] add Copper
tag @s[nbt={HandItems: [{id: "minecraft:gold_ingot"}]}] add Gold
tag @s[nbt={HandItems: [{id: "minecraft:redstone"}]}] add Redstone
tag @s[nbt={HandItems: [{id: "minecraft:emerald"}]}] add Emerald
tag @s[nbt={HandItems: [{id: "minecraft:lapis_lazuli"}]}] add Lapis
tag @s[nbt={HandItems: [{id: "minecraft:diamond"}]}] add Diamond
tag @s[nbt={HandItems: [{id: "minecraft:quartz"}]}] add Quartz
item replace entity @s weapon.mainhand with air

attribute @s generic.follow_range base set 0
attribute @s generic.attack_damage base set 0
attribute @s generic.movement_speed base set 0
execute as @s[tag=Coal] run particle minecraft:item coal ~ ~ ~ 0.05 0.05 0.05 0.05 5
execute as @s[tag=Iron] run particle minecraft:item iron_ingot ~ ~ ~ 0.05 0.05 0.05 0.05 5
execute as @s[tag=Copper] run particle minecraft:item copper_ingot ~ ~ ~ 0.05 0.05 0.05 0.05 5
execute as @s[tag=Gold] run particle minecraft:item gold_ingot ~ ~ ~ 0.05 0.05 0.05 0.05 5
execute as @s[tag=Redstone] run particle minecraft:item redstone ~ ~ ~ 0.05 0.05 0.05 0.05 5
execute as @s[tag=Emerald] run particle minecraft:item emerald ~ ~ ~ 0.05 0.05 0.05 0.05 5
execute as @s[tag=Lapis] run particle minecraft:item lapis_lazuli ~ ~ ~ 0.05 0.05 0.05 0.05 5
execute as @s[tag=Diamond] run particle minecraft:item diamond ~ ~ ~ 0.05 0.05 0.05 0.05 5
execute as @s[tag=Quartz] run particle minecraft:item quartz ~ ~ ~ 0.05 0.05 0.05 0.05 5
playsound entity.generic.eat hostile @a ~ ~ ~ 1 1.25
effect give @s nausea 50

tag @s add Ingest