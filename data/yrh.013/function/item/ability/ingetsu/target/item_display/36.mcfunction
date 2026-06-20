execute store result storage yrh.013:function add_scale.input.y float 0.00001 run data get storage yrh.013:function add_scale.input.y 0.0
function yrh.013:function/add_scale/.root

scoreboard players reset @n[tag=yrh013.item.target.tmp] yrh013.is_target

attribute @n[tag=yrh013.item.target.tmp] minecraft:friction_modifier modifier remove yrh.013:ingetsu
attribute @n[tag=yrh013.item.target.tmp] minecraft:air_drag_modifier modifier remove yrh.013:ingetsu

kill @s