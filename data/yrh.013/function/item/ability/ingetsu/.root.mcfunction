# item/ability/ingetsu/.root

##

### 初期化

data remove storage yrh.013:global tmp
data modify storage yrh.013:global tmp.path set value "yrh.013:item/ability/ingetsu/summon_item_display"

### 再帰用にデータを複製

data modify storage yrh.013:global tmp.yrh013 set from entity @n[tag=yrh013.item.tmp] Items[{Slot:0b}].components."minecraft:custom_data".yrh013

### データがあれば再起始める

execute if data storage yrh.013:global tmp.yrh013.data.targets run function yrh.013:item/uuid_serch/loop
