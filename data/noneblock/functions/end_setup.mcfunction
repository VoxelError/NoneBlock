kill @e[type=ender_dragon]

fill 1 50 -1 -1 50 1 bedrock
fill -3 46 -3 3 52 3 air

fill 96 75 96 0 75 -96 command_block{auto: true, Command: "fill ~1 ~2 ~1 ~-1 ~-2 ~-1 air"} replace end_gateway
fill -96 75 -96 0 75 96 command_block{auto: true, Command: "fill ~1 ~2 ~1 ~-1 ~-2 ~-1 air"} replace end_gateway