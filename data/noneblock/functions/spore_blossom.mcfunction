tag @s[nbt={HasNectar: false}] remove Pollen
tag @s[nbt={HasNectar: true},tag=!Pollen] add Spore
tag @s[tag=Spore] add Pollen

execute unless block ~ ~-1 ~ flowering_azalea run tag @s remove Spore
execute unless block ~ ~-2 ~ moss_block run tag @s remove Spore
execute unless block ~ ~-3 ~ air run tag @s remove Spore

execute as @s[tag=Spore] run setblock ~ ~-3 ~ spore_blossom
execute as @s[tag=Spore] run playsound item.bone_meal.use block @a ~ ~-3 ~
execute as @s[tag=Spore] align xyz run particle composter ~0.5 ~-2.25 ~0.5 0.25 0.125 0.25 0.1 10

tag @s remove Spore