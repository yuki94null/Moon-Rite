# item/link_entity

## みてるエンティティ取る

execute anchored eyes positioned ^ ^ ^ run function yrh.013:function/looking_entity/.root

### 居たら追加・削除・暴行などを加える

execute if predicate {condition:"entity_properties",entity:"this",predicate:{"minecraft:type_specific/player":{input:{sneak:false}}}} \
    if entity @e[tag=yrh013.function.looking_entity] as @e[tag=yrh013.function.looking_entity] run \
        function yrh.013:item/add_uuid with entity @s
execute if predicate {condition:"entity_properties",entity:"this",predicate:{"minecraft:type_specific/player":{input:{sneak:true}}}} \
    if entity @e[tag=yrh013.function.looking_entity] as @e[tag=yrh013.function.looking_entity] run \
        function yrh.013:item/remove_uuid with entity @s

### タグ外すす
tag @e remove yrh013.function.looking_entity

## パーティクル

### 初期化

data remove storage yrh.013:global tmp
data modify storage yrh.013:global tmp.path set value "yrh.013:item/selection_particle/pos"

### 再帰用にデータを複製

data modify storage yrh.013:global tmp.yrh013 set from entity @n[tag=yrh013.item.tmp] Items[{Slot:0b}].components."minecraft:custom_data".yrh013

### データがあれば再起始める

execute if data storage yrh.013:global tmp.yrh013.data.targets run function yrh.013:item/uuid_serch/loop