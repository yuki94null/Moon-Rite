# item/use

## どっちの手か

execute if items entity @s weapon.mainhand *[custom_data~{yrh013:{type:"item"}}] run \
tag @s add yrh013.player.hasitem.mainhand

execute if items entity @s[tag=!yrh013.player.hasitem.mainhand] weapon.offhand *[custom_data~{yrh013:{type:"item"}}] run \
tag @s add yrh013.player.hasitem.offhand

## アイテム写す

kill @e[tag=yrh013.item_minecart.tmp]
summon chest_minecart ~ ~-100000 ~ {Tags:[yrh013.item_minecart.tmp]}

item replace entity @n[tag=yrh013.item_minecart.tmp] container.0 from entity @s[tag=yrh013.player.hasitem.mainhand] weapon.mainhand
item replace entity @n[tag=yrh013.item_minecart.tmp] container.0 from entity @s[tag=yrh013.player.hasitem.offhand] weapon.offhand

## みてるエンティティ取る

execute anchored eyes positioned ^ ^ ^ run function yrh.013:function/looking_entity/.root

### 居たら追加・削除・暴行などを加える

execute if entity @n[tag=yrh013.function.looking_entity] if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:false}}}} run function yrh.013:item/add_uuid with entity @n[tag=yrh013.function.looking_entity]
execute if entity @n[tag=yrh013.function.looking_entity] if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:true}}}} run function yrh.013:item/remove_uuid with entity @n[tag=yrh013.function.looking_entity]

## パーティクル

### 初期化

data remove storage yrh.013:global tmp
data modify storage yrh.013:global tmp.path set value "yrh.013:item/selection_particle/pos"

### 再帰ようにデータを複製

data modify storage yrh.013:global tmp.yrh013 set from entity @n[tag=yrh013.item_minecart.tmp] Items[{Slot:0b}].components."minecraft:custom_data".yrh013

### データがあれば再起始める

execute if data storage yrh.013:global tmp.yrh013.data.targets run function yrh.013:item/uuid_serch/loop

## 戻す

execute if entity @s[tag=yrh013.player.hasitem.mainhand] run item replace entity @s weapon.mainhand from entity @n[tag=yrh013.item_minecart.tmp] container.0
execute if entity @s[tag=yrh013.player.hasitem.offhand] run item replace entity @s weapon.offhand from entity @n[tag=yrh013.item_minecart.tmp] container.0

## kill minecart

kill @e[tag=yrh013.item_minecart.tmp]

## タグ外すす
    tag @e remove yrh013.function.looking_entity
    tag @s remove yrh013.player.hasitem.mainhand
    tag @s remove yrh013.player.hasitem.offhand