# function/get_hitbox_size/.root

## init

data remove storage yrh.013:function get_hitbox_size

scoreboard players reset $horizontal yrh013.function
scoreboard players reset $vertical yrh013.function

## 調査

execute at @s positioned ~ ~ ~0.1 run function yrh.013:function/get_hitbox_size/horizontal
execute at @s positioned ~ ~0.1 ~ run function yrh.013:function/get_hitbox_size/vertical