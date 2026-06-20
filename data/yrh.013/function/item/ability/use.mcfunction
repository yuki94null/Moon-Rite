# item/ability/use

## 無ければやめる

execute unless data entity @n[tag=yrh013.item.tmp] Items[{Slot:0b}].components."minecraft:custom_data".yrh013.data.targets[] run return fail

## 使ったので時間を更新

execute store result entity @n[tag=yrh013.item.tmp] Items[{Slot:0b}].components."minecraft:custom_data".yrh013.data.time int 1.0 run \
    time query gametime

## 分岐

execute if data entity @n[tag=yrh013.item.tmp] Items[{Slot:0b}].components."minecraft:custom_data".yrh013{id:"ingetsu_sword"} run function yrh.013:item/ability/ingetsu/.root

execute if data entity @n[tag=yrh013.item.tmp] Items[{Slot:0b}].components."minecraft:custom_data".yrh013{id:"yogetsu_sword"} run function yrh.013:item/ability/yogetsu/.root

## データ消す

data remove entity @n[tag=yrh013.item.tmp] Items[{Slot:0b}].components."minecraft:custom_data".yrh013.data.targets
