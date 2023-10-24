tag @s add Cure
tag @s[tag=Curing] remove Cure
execute unless data entity @s ActiveEffects[{Id: 18}] run tag @s remove Cure
execute unless entity @e[type=item,nbt={Item: {id: "minecraft:totem_of_undying"}},distance=..1] run tag @s remove Cure

execute as @s[tag=Cure] run kill @e[type=item,nbt={Item: {id: "minecraft:totem_of_undying"}},limit=1,sort=nearest]
execute as @s[tag=Cure] run playsound entity.zombie_villager.cure hostile @a
execute as @s[tag=Cure] run data merge entity @s {LifeTicks: 2000}
execute as @s[tag=Cure] run effect give @s strength 1000000
execute as @s[tag=Cure] run effect clear @s weakness
execute as @s[tag=Cure] run tag @s add Curing

execute as @s[tag=Curing] run data merge entity @s {TicksFrozen: 140}
execute as @s[tag=Curing] store result score @s Counter run data get entity @s Health 10
execute as @s[tag=Curing] run tag @s[scores={Counter=..10}] add Cured

execute as @s[tag=Cured] run playsound item.totem.use neutral @a
execute as @s[tag=Cured] run summon allay
execute as @s[tag=Cured] run data merge entity @s {DeathTime: 19, Silent: true}
execute as @s[tag=Cured] run kill