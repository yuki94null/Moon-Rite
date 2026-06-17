# load

## tellraw

tellraw @a [{text:"Moon Rite loaded"}]

## score

scoreboard objectives add yrh013.global dummy
scoreboard objectives add yrh013.use_time dummy

### value

scoreboard players set $recharge_time yrh013.global 40

## data
data modify storage yrh.013:global items append value {type:item,id:"moon_sword"}
data modify storage yrh.013:global items append value {type:item,id:"yogetsu_sword"}
data modify storage yrh.013:global items append value {type:item,id:"ingetsu_sword"}