# load

## tellraw

tellraw @a [{text:"Moon Rite loaded"}]

## score

scoreboard objectives add yrh013.global dummy
scoreboard objectives add yrh013.function dummy
scoreboard objectives add yrh013.use_time dummy
scoreboard objectives add yrh013.is_target dummy

### value

scoreboard players set $recharge_time yrh013.global 100

## data
data remove storage yrh.013:global items 

data modify storage yrh.013:global items append value {type:item,id:"moon_sword"}
data modify storage yrh.013:global items append value {type:item,id:"ingetsu_sword"}
data modify storage yrh.013:global items append value {type:item,id:"yogetsu_sword",\
timelines:{y:[\
20.0, 19.95, 19.8, 19.55, 19.2, 18.75, 18.2, 17.55, 16.8, 15.95, 15.0, 13.95, 12.8, 11.55, 10.2, 8.75, 7.2, 5.55, 3.8, 1.95, 0.0\
],\
xz:[\
    5.0, 4.75, 4.5, 4.25, 4.0, 3.75, 3.5, 3.25, 3.0, 2.75, 2.5, 2.25, 2.0, 1.75, 1.5, 1.25, 1.0, 0.75, 0.5, 0.25, 0.0\
]}}
