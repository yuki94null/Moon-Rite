# function/add_scale/.root

## じゃなかったら返す

execute \
    unless entity @s[type=item_display] \
    unless entity @s[type=block_display] \
    unless entity @s[type=text_display] run \
        return fail

## duration決めとく
#
data modify entity @s interpolation_duration set value 1
## 計算用にスコアに入れる

execute store result score $x yrh013.function run data get entity @s transformation.scale[0] 10000
execute store result score $y yrh013.function run data get entity @s transformation.scale[1] 10000
execute store result score $z yrh013.function run data get entity @s transformation.scale[2] 10000

execute store result score $add_x yrh013.function run data get storage yrh.013:function add_scale.input.x 10000
execute store result score $add_y yrh013.function run data get storage yrh.013:function add_scale.input.y 10000
execute store result score $add_z yrh013.function run data get storage yrh.013:function add_scale.input.z 10000

## 戻す

execute if data storage yrh.013:function add_scale.input.x store result entity @s transformation.scale[0] float 0.0001 run scoreboard players operation $x yrh013.function += $add_x yrh013.function
execute if data storage yrh.013:function add_scale.input.y store result entity @s transformation.scale[1] float 0.0001 run scoreboard players operation $y yrh013.function += $add_y yrh013.function
execute if data storage yrh.013:function add_scale.input.z store result entity @s transformation.scale[2] float 0.0001 run scoreboard players operation $z yrh013.function += $add_z yrh013.function

## スケールをもとにyも変える

execute store result entity @s transformation.translation[1] float 0.025 run data get entity @s transformation.scale[1] 20

## 消しとく

data remove storage yrh.013:function add_scale.input