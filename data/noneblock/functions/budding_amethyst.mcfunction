tag @s add Strike
execute unless block ~ ~-1 ~ lightning_rod[facing=up] run tag @s remove Strike
execute unless block ~ ~-2 ~ amethyst_block run tag @s remove Strike

execute as @s[tag=Strike] run setblock ~ ~-2 ~ budding_amethyst
execute as @s[tag=Strike] run setblock ~ ~-2 ~ air destroy
execute as @s[tag=Strike] run setblock ~ ~-2 ~ amethyst_block
execute unless predicate noneblock:quarter run tag @s remove Strike
execute unless predicate noneblock:quarter run tag @s remove Strike

execute as @s[tag=Strike] run setblock ~ ~-1 ~ air destroy
execute as @s[tag=Strike] run setblock ~ ~-2 ~ budding_amethyst
execute as @s[tag=Strike] run playsound block.amethyst_block.break block @a ~ ~-2 ~ 1 0.55

tag @s add Tagged