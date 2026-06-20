# function/get_hitbox_size/horizontal

## カウント

scoreboard players add $horizontal yrh013.function 1

## タグ

### つけて

tag @s add yrh013.function.get_hitbox_size.horizontal

### 判定して消す

execute if entity @s[dx=0,dy=0,dz=0] positioned ~-1 ~ ~-1 if entity @s[dx=0,dy=0,dz=0] run tag @s remove yrh013.function.get_hitbox_size.horizontal

## 消せてなければ

execute if entity @s[tag=!yrh013.function.get_hitbox_size.horizontal] positioned ~ ~ ~0.1 run return run function yrh.013:function/get_hitbox_size/horizontal

## タグ消すわよ

tag @s remove yrh013.function.get_hitbox_size.horizontal

## 0.1ずつなのでカウントを0.1倍する

execute store result storage yrh.013:function get_hitbox_size.Width double 0.1 run scoreboard players get $horizontal yrh013.function