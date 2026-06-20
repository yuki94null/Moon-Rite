execute store result storage yrh.013:function add_scale.input.y float 0.00001 run data get storage yrh.013:function add_scale.input.y 220000.0
function yrh.013:function/add_scale/.root


attribute @n[tag=yrh013.item.target.tmp] knockback_resistance modifier add yrh.013:ingetsu 100.0 add_value

execute store result score $tmp yrh013.global run data get entity @n[tag=yrh013.item.target.tmp] Health 10000

execute if score $tmp yrh013.global matches ..100000 run effect give @n[tag=yrh013.item.target.tmp] invisibility 1 0 true

$damage @n[tag=yrh013.item.target.tmp] 10.0 player_attack by @n[nbt={UUID:$(Owner)}]

attribute @n[tag=yrh013.item.target.tmp] knockback_resistance modifier remove yrh.013:ingetsu