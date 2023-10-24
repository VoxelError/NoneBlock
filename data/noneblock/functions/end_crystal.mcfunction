tag @s add Check
execute unless entity @e[type=item,nbt={Item: {id: "minecraft:nether_star", Count: 1b}},distance=..1] run tag @s remove Check
execute unless entity @e[type=item,nbt={Item: {id: "minecraft:ender_pearl", Count: 12b}},distance=..1] run tag @s remove Check

execute unless block ~ ~-1 ~ obsidian run tag @s remove Check
execute unless block ~02 ~-1 ~02 crying_obsidian run tag @s remove Check
execute unless block ~-2 ~-1 ~02 crying_obsidian run tag @s remove Check
execute unless block ~-2 ~-1 ~-2 crying_obsidian run tag @s remove Check
execute unless block ~02 ~-1 ~-2 crying_obsidian run tag @s remove Check
execute store result score @s Counter run clone ~-1 ~-1 ~-1 ~1 ~-1 ~1 ~-1 ~-1 ~-1 filtered crying_obsidian force
execute unless score @s Counter matches 8 run tag @s remove Check
execute store result score @s Counter positioned ~-2 ~-1 ~-2 run clone ~ ~ ~ ~4 ~ ~4 ~ ~ ~ filtered end_stone force
execute unless score @s Counter matches 12 run tag @s remove Check

execute as @s[tag=Check] run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 end_portal_frame replace end_stone
execute as @s[tag=Check] run fill ~-1 ~-1 ~02 ~01 ~-1 ~02 end_portal_frame[facing=north] destroy
execute as @s[tag=Check] run fill ~-2 ~-1 ~-1 ~-2 ~-1 ~01 end_portal_frame[facing=east] destroy
execute as @s[tag=Check] run fill ~-1 ~-1 ~-2 ~01 ~-1 ~-2 end_portal_frame[facing=south] destroy
execute as @s[tag=Check] run fill ~02 ~-1 ~-1 ~02 ~-1 ~01 end_portal_frame[facing=west] destroy
execute as @s[tag=Check] run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 obsidian replace crying_obsidian
execute as @s[tag=Check] run setblock ~ ~-1 ~ crying_obsidian

execute as @s[tag=Check] run kill @e[type=item,nbt={Item: {id: "minecraft:nether_star", Count: 1b}},limit=1,sort=nearest]
execute as @s[tag=Check] run kill @e[type=item,nbt={Item: {id: "minecraft:ender_pearl", Count: 12b}},limit=1,sort=nearest]
execute as @s[tag=Check] run playsound block.end_portal.spawn block @a ~ ~ ~ 1 1.25
execute as @s[tag=Check] run summon lightning_bolt

####################################################################################################

execute if block ~1 ~-1 ~ blue_ice run tag @s add Gen
execute if block ~ ~-1 ~1 blue_ice run tag @s add Gen
execute if block ~-1 ~-1 ~ blue_ice run tag @s add Gen
execute if block ~ ~-1 ~-1 blue_ice run tag @s add Gen

execute unless block ~ ~-1 ~ lava run tag @s remove Gen
execute unless block ~ ~-2 ~ obsidian run tag @s remove Gen

execute as @s[tag=Gen] run setblock ~ ~-1 ~ end_stone
execute as @s[tag=Gen] run particle minecraft:large_smoke ~ ~ ~ 0.25 0 0.25 0 10
execute as @s[tag=Gen] run playsound block.lava.extinguish block @a ~ ~-1 ~ 0.5 2
tag @s remove Gen