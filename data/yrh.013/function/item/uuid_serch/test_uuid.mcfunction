# item/uuid_serch/test_uuid

## 居たらタグつけ

$execute if entity @n[nbt={UUID:$(UUID)}] run tag @n[nbt={UUID:$(UUID)}] add yrh013.uuid.selected

## function実行

$execute if entity @n[tag=yrh013.uuid.selected] run function $(path)

## 居なかったらデータ消す

$execute unless entity @n[tag=yrh013.uuid.selected] run \
    data remove entity @n[tag=yrh013.item.tmp] Items[{Slot:0b}].components."minecraft:custom_data".yrh013.data.targets[{UUID:$(UUID)}]

## タグ外し

execute if entity @n[tag=yrh013.uuid.selected] run tag @n[tag=yrh013.uuid.selected] remove yrh013.uuid.selected