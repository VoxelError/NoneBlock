execute as @e[type=lightning_bolt] if predicate noneblock:struck run tag @e[type=hoglin,distance=0] add Brute
execute as @s[tag=Brute] run data merge entity @s {DeathTime: 19, Silent: true}
execute as @s[tag=Brute] run fill ~ ~ ~ ~ ~ ~ air replace fire
execute as @s[tag=Brute] run summon piglin_brute
execute as @s[tag=Brute] run kill