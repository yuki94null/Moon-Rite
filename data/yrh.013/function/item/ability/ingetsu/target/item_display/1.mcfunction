# playsound block.sculk_catalyst.bloom player @a ~ ~ ~ 1.0 2.0 0.0
playsound block.conduit.activate player @a ~ ~ ~ 1.0 0.5 0.0

attribute @n[tag=yrh013.item.target.tmp] minecraft:friction_modifier modifier add yrh.013:ingetsu 100.0 add_value
attribute @n[tag=yrh013.item.target.tmp] minecraft:air_drag_modifier modifier add yrh.013:ingetsu 100.0 add_value
execute store result storage yrh.013:function add_scale.input.y float 0.00001 run data get storage yrh.013:function add_scale.input.y 0.0
function yrh.013:function/add_scale/.root