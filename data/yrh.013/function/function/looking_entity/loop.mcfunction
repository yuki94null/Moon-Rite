# function/looking_entity/loop

## ブロック判定

execute unless block ~ ~ ~ #air run return fail

## エンティティ判定

### タグ付ける

execute positioned ~0.125 ~0.125 ~0.125 positioned ~-1.0 ~-1.0 ~-1.0 as @n[tag=!yrh013.function.exception,dx=0,dy=0,dz=0] positioned ~0.75 ~0.75 ~0.75 if entity @s[dx=0,dy=0,dz=0] run tag @s add yrh013.function.looking_entity

### 検出したら終わる

# execute if entity @e[tag=yrh013.function.looking_entity] run return fail

## カウント

### カウント減らす

scoreboard players remove $tmp yrh013.global 1

### 0になったら終わる

execute if score $tmp yrh013.global matches 0 run return fail

## ループ

execute positioned ^ ^ ^0.5 run function yrh.013:function/looking_entity/loop