# item/add_uuid

## 追加する

$execute unless data entity @n[tag=yrh013.item_minecart.tmp] Items[{Slot:0b}].components."minecraft:custom_data".yrh013.data.targets[{UUID:$(UUID)}] run \
    data modify entity @n[tag=yrh013.item_minecart.tmp] Items[{Slot:0b}].components."minecraft:custom_data".yrh013.data.targets append value {UUID:$(UUID)}