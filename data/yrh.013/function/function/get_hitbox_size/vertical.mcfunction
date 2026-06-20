# function/get_hitbox_size/vertical

## カウント

scoreboard players add $vertical yrh013.function 1

## タグ

### つけて

tag @s add yrh013.function.get_hitbox_size.vertical

### 判定して消す

execute if entity @s[dx=0,dy=0,dz=0] positioned ~-1 ~ ~-1 if entity @s[dx=0,dy=0,dz=0] run tag @s remove yrh013.function.get_hitbox_size.vertical

## 消せてなければ

execute if entity @s[tag=!yrh013.function.get_hitbox_size.vertical] positioned ~ ~0.1 ~ run return run function yrh.013:function/get_hitbox_size/vertical

## タグ消すわよ

tag @s remove yrh013.function.get_hitbox_size.vertical

## 0.1ずつなのでカウントを0.1倍する

execute store result storage yrh.013:function get_hitbox_size.Height double 0.1 run scoreboard players get $vertical yrh013.function