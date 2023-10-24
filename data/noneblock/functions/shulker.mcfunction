execute positioned ^ ^ ^0.25 if entity @e[type=item,nbt={Item: {id: "minecraft:chorus_flower", Count: 1b}},distance=..0.5] run tag @s[tag=!Glitch] add Chorus
execute as @s[tag=Chorus] positioned ^ ^ ^0.25 run kill @e[type=item,nbt={Item: {id: "minecraft:chorus_flower", Count: 1b}},limit=1,sort=nearest]
execute as @s[tag=Chorus] run particle minecraft:item chorus_flower ^ ^ ^0.25 0.05 0.05 0.05 0.05 5
execute as @s[tag=Chorus] run playsound entity.enderman.teleport hostile @a ~ ~ ~ 0.5 2
execute as @s[tag=Chorus] run playsound entity.generic.eat hostile @a ~ ~ ~ 1 1.25
execute as @s[tag=Chorus] run tag @s[predicate=!noneblock:quarter] remove Chorus
execute as @s[tag=Chorus] run tag @s[predicate=!noneblock:quarter] remove Chorus
execute as @s[tag=Chorus] run attribute @s generic.follow_range base set 0
execute as @s[tag=Chorus] run attribute @s generic.attack_damage base set 0
execute as @s[tag=Chorus] run attribute @s generic.movement_speed base set 0
execute as @s[tag=Chorus] run playsound entity.enderman.teleport hostile @a ~ ~ ~ 1 0.75
execute as @s[tag=Chorus] run playsound entity.enderman.teleport hostile @a ~ ~ ~ 1 1.25
execute as @s[tag=Chorus] run data merge entity @s {Silent: true}
execute as @s[tag=Chorus] run tag @s add Glitch
tag @s remove Chorus

execute as @s[tag=Glitch] run effect clear @s invisibility
execute as @s[tag=Glitch] run scoreboard players add @s Counter 1
execute as @s[tag=Glitch] run scoreboard players set @s[scores={Counter=10..}] Counter 0
execute as @s[tag=Glitch] as @s[scores={Counter=0},predicate=noneblock:quarter] run playsound entity.enderman.teleport hostile @a ~ ~ ~ 0.33 0.85
execute as @s[tag=Glitch] as @s[scores={Counter=0},predicate=noneblock:quarter] run playsound entity.enderman.teleport hostile @a ~ ~ ~ 0.33 1.15
execute as @s[tag=Glitch] run effect give @s[predicate=noneblock:quarter] invisibility 1 0 true
execute as @s[tag=Glitch] if block ~ ~-1 ~ purpur_block run tag @s[nbt={Lifetime: 2399}] add Shulker

execute as @s[tag=Shulker] run data merge entity @s {Lifetime: 0, DeathTime: 19}
execute as @s[tag=Shulker] run setblock ~ ~-1 ~ air destroy
execute as @s[tag=Shulker] positioned ~ ~-1 ~ run kill @e[type=item,nbt={Item: {id: "minecraft:purpur_block", Count: 1b}},limit=1,sort=nearest]
execute as @s[tag=Shulker] run summon shulker ~ ~-1 ~
execute as @s[tag=Shulker] run kill