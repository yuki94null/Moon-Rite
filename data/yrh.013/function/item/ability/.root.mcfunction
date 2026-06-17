# item/ability/.root

## 時間取得

### 現在のゲームタイム

execute store result score $previous_time yrh013.global store result score $current_time yrh013.global run time query gametime

### 前回使った時間

execute if data entity @n[tag=yrh013.item.tmp] Items[{Slot:0b}].components."minecraft:custom_data".yrh013.data.time \
    store result score $previous_time yrh013.global run \
        data get entity @n[tag=yrh013.item.tmp] Items[{Slot:0b}].components."minecraft:custom_data".yrh013.data.time

#### 無ければ今を入れておく

execute unless data entity @n[tag=yrh013.item.tmp] Items[{Slot:0b}].components."minecraft:custom_data".yrh013.data.time \
    store result entity @n[tag=yrh013.item.tmp] Items[{Slot:0b}].components."minecraft:custom_data".yrh013.data.time int 1.0 run \
        scoreboard players get $current_time yrh013.global

### 差を出して判定

scoreboard players operation $current_time yrh013.global -= $previous_time yrh013.global

execute if score $current_time yrh013.global >= $recharge_time yrh013.global run function yrh.013:item/ability/use