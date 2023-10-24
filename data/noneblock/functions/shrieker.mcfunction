execute if block ~ ~ ~ sculk_shrieker[shrieking=false,can_summon=false] run tag @s add Shrieker
execute as @s[tag=Shrieker] if block ~ ~ ~ sculk_shrieker[waterlogged=false] run setblock ~ ~ ~ sculk_shrieker[can_summon=true,waterlogged=false] destroy
execute as @s[tag=Shrieker] if block ~ ~ ~ sculk_shrieker[waterlogged=true] run setblock ~ ~ ~ sculk_shrieker[can_summon=true,waterlogged=true] destroy
execute as @s[tag=Shrieker] run kill