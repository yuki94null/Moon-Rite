data modify entity @s transformation.translation[0] set from storage yrh.013:global items[{id:"yogetsu_sword"}].timelines.xz[20]
data modify entity @s transformation.translation[1] set from storage yrh.013:global items[{id:"yogetsu_sword"}].timelines.y[20]

particle end_rod ~ ~ ~ 0.0 0.0 0.0 0.25 25 normal @a
particle electric_spark ~ ~ ~ 0.0 0.0 0.0 1.0 100 normal @a

playsound entity.generic.explode player @a ~ ~ ~ 1.0 1.0 0.0

scoreboard players reset @n[tag=yrh013.item.target.tmp] yrh013.is_target

attribute @n[tag=yrh013.item.target.tmp] minecraft:friction_modifier modifier remove yrh.013:yogetsu
attribute @n[tag=yrh013.item.target.tmp] minecraft:air_drag_modifier modifier remove yrh.013:yogetsu

$execute as @e[distance=..1.5,nbt={Brain:{}}] run damage @s 6.0 player_attack by @n[nbt={UUID:$(Owner)}]