# item/use

## どっちの手か

execute if items entity @s weapon.mainhand *[custom_data~{yrh013:{type:"item"}}] run \
tag @s add yrh013.player.hasitem.mainhand

execute if items entity @s[tag=!yrh013.player.hasitem.mainhand] weapon.offhand *[custom_data~{yrh013:{type:"item"}}] run \
tag @s add yrh013.player.hasitem.offhand

## アイテム写す

kill @e[tag=yrh013.item.tmp]
summon chest_minecart ~ ~-100000 ~ {Tags:[yrh013.item.tmp]}

item replace entity @n[tag=yrh013.item.tmp] container.0 from entity @s[tag=yrh013.player.hasitem.mainhand] weapon.mainhand
item replace entity @n[tag=yrh013.item.tmp] container.0 from entity @s[tag=yrh013.player.hasitem.offhand] weapon.offhand

execute if data entity @n[tag=yrh013.item.tmp] Items[{Slot:0b}].components."minecraft:custom_data".yrh013{id:"moon_sword"} run tag @s add yrh013.item.moon_sword

## 何する？

### 笛吹く

execute if entity @s[tag=yrh013.item.moon_sword] run function yrh.013:item/instrument/.root

### 紐づけ

execute if entity @s[tag=!yrh013.item.moon_sword] if predicate {condition:"entity_properties",entity:"this",predicate:{"minecraft:type_specific/player":{input:{sprint:false}}}} run function yrh.013:item/link_entity

### 使う

execute if entity @s[tag=!yrh013.item.moon_sword] if predicate {condition:"entity_properties",entity:"this",predicate:{"minecraft:type_specific/player":{input:{sprint:true}}}} run function yrh.013:item/ability/.root

## 戻す

execute if entity @s[tag=yrh013.player.hasitem.mainhand] run item replace entity @s weapon.mainhand from entity @n[tag=yrh013.item.tmp] container.0
execute if entity @s[tag=yrh013.player.hasitem.offhand] run item replace entity @s weapon.offhand from entity @n[tag=yrh013.item.tmp] container.0

## kill minecart

kill @e[tag=yrh013.item.tmp]

## タグ外すす

tag @s remove yrh013.player.hasitem.mainhand
tag @s remove yrh013.player.hasitem.offhand
tag @s remove yrh013.item.moon_sword
