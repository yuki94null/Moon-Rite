# item/remove_uuid

## 追加する
$execute if data entity @n[tag=yrh013.item_minecart.tmp] Items[{Slot:0b}].components."minecraft:custom_data".yrh013.data.targets[{UUID:$(UUID)}] run \
    data remove entity @n[tag=yrh013.item_minecart.tmp] Items[{Slot:0b}].components."minecraft:custom_data".yrh013.data.targets[{UUID:$(UUID)}]