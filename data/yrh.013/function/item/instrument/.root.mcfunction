# item/instrument/.root

## 月齢

execute store result score $moon yrh013.global run time query moon

execute if score $moon yrh013.global matches 12000..23999 run tag @s add yrh013.item.moon_sword.full_moon

execute if score $moon yrh013.global matches 108000..119999 run tag @s add yrh013.item.moon_sword.new_moon

## sneakでリセット

execute if predicate {condition:"entity_properties",entity:"this",predicate:{"minecraft:type_specific/player":{input:{sneak:true}}}} run \
    return run \
        function yrh.013:item/instrument/reset

## Index入れる

execute store result score $tmp yrh013.global store result storage yrh.013:global tmp.Index int 1.0 run data get entity @n[tag=yrh013.item.tmp] Items[{Slot:0b}].components."minecraft:custom_data".yrh013.data.time

execute store result entity @n[tag=yrh013.item.tmp] Items[{Slot:0b}].components."minecraft:custom_data".yrh013.data.time int 1.0 run scoreboard players add $tmp yrh013.global 1

execute if score $tmp yrh013.global matches 481.. run data modify entity @n[tag=yrh013.item.tmp] Items[{Slot:0b}].components."minecraft:custom_data".yrh013.data.time set value 0

## 呼ぶ

function yrh.013:item/instrument/score/.root with storage yrh.013:global tmp

## 消す

tag @s remove yrh013.item.moon_sword.full_moon
tag @s remove yrh013.item.moon_sword.new_moon