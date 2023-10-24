execute if block ~08 ~-1 ~ end_stone run setblock ~ ~-1 ~ granite
execute if block ~10 ~-1 ~ end_stone run setblock ~ ~-1 ~ diorite
execute if block ~12 ~-1 ~ end_stone run setblock ~ ~-1 ~ andesite

execute if block ~ ~-1 ~ granite run place feature chorus_plant ~4 ~ ~2
execute if block ~ ~-1 ~ diorite run place feature chorus_plant ~5 ~ ~2
execute if block ~ ~-1 ~ andesite run place feature chorus_plant ~6 ~ ~2

setblock ~ ~-1 ~ end_stone