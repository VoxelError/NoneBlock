execute unless data entity @s ActiveEffects[{Id: 20}] run effect give @s wither 1000000
execute unless data entity @s ActiveEffects[{Id: 19}] run effect give @s poison 1000000
scoreboard players add @s Counter 0

execute as @s[tag=Coal] store success score @s[scores={Counter=0}] Counter run fill ~ ~-1 ~ ~ ~-1 ~ coal_ore replace infested_stone
execute as @s[tag=Iron] store success score @s[scores={Counter=0}] Counter run fill ~ ~-1 ~ ~ ~-1 ~ iron_ore replace infested_stone
execute as @s[tag=Copper] store success score @s[scores={Counter=0}] Counter run fill ~ ~-1 ~ ~ ~-1 ~ copper_ore replace infested_stone
execute as @s[tag=Gold] store success score @s[scores={Counter=0}] Counter run fill ~ ~-1 ~ ~ ~-1 ~ gold_ore replace infested_stone
execute as @s[tag=Redstone] store success score @s[scores={Counter=0}] Counter run fill ~ ~-1 ~ ~ ~-1 ~ redstone_ore replace infested_stone
execute as @s[tag=Emerald] store success score @s[scores={Counter=0}] Counter run fill ~ ~-1 ~ ~ ~-1 ~ emerald_ore replace infested_stone
execute as @s[tag=Lapis] store success score @s[scores={Counter=0}] Counter run fill ~ ~-1 ~ ~ ~-1 ~ lapis_ore replace infested_stone
execute as @s[tag=Diamond] store success score @s[scores={Counter=0}] Counter run fill ~ ~-1 ~ ~ ~-1 ~ diamond_ore replace infested_stone

execute as @s[tag=Coal] store success score @s[scores={Counter=0}] Counter run fill ~ ~-1 ~ ~ ~-1 ~ deepslate_coal_ore replace infested_deepslate
execute as @s[tag=Iron] store success score @s[scores={Counter=0}] Counter run fill ~ ~-1 ~ ~ ~-1 ~ deepslate_iron_ore replace infested_deepslate
execute as @s[tag=Copper] store success score @s[scores={Counter=0}] Counter run fill ~ ~-1 ~ ~ ~-1 ~ deepslate_copper_ore replace infested_deepslate
execute as @s[tag=Gold] store success score @s[scores={Counter=0}] Counter run fill ~ ~-1 ~ ~ ~-1 ~ deepslate_gold_ore replace infested_deepslate
execute as @s[tag=Redstone] store success score @s[scores={Counter=0}] Counter run fill ~ ~-1 ~ ~ ~-1 ~ deepslate_redstone_ore replace infested_deepslate
execute as @s[tag=Emerald] store success score @s[scores={Counter=0}] Counter run fill ~ ~-1 ~ ~ ~-1 ~ deepslate_emerald_ore replace infested_deepslate
execute as @s[tag=Lapis] store success score @s[scores={Counter=0}] Counter run fill ~ ~-1 ~ ~ ~-1 ~ deepslate_lapis_ore replace infested_deepslate
execute as @s[tag=Diamond] store success score @s[scores={Counter=0}] Counter run fill ~ ~-1 ~ ~ ~-1 ~ deepslate_diamond_ore replace infested_deepslate

execute as @s[tag=Gold] store success score @s[scores={Counter=0}] Counter run fill ~ ~-1 ~ ~ ~-1 ~ nether_gold_ore replace netherrack
execute as @s[tag=Quartz] store success score @s[scores={Counter=0}] Counter run fill ~ ~-1 ~ ~ ~-1 ~ nether_quartz_ore replace netherrack

execute as @s[tag=Gold] store success score @s[scores={Counter=0}] Counter run fill ~ ~-1 ~ ~ ~-1 ~ gilded_blackstone replace blackstone

data merge entity @s[scores={Counter=1}] {DeathTime: 19, Silent: true}
kill @s[scores={Counter=1}]