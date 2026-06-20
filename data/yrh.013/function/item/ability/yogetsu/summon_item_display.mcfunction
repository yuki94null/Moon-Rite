# item/ability/yogetsu/summon_item_display


## ディスプレイ出す

$execute at @n[tag=yrh013.uuid.selected] run \
    summon item_display ~ ~ ~ {brightness:{block:15,sky:15},teleport_duration:0,interpolation_duration:0,data:{yrh013:{data:{UUID:$(UUID)}}},Tags:[yrh013.item.yogetsu.item_display,yrh013.item.yogetsu.item_display.tmp],item:{id:"shroomlight"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f],translation:[0f,0f,0f]}}

data modify entity @n[tag=yrh013.item.yogetsu.item_display.tmp] transformation.translation[1] set from storage yrh.013:global items[{id:"yogetsu_sword"}].timelines.y[0]

data modify entity @n[tag=yrh013.item.yogetsu.item_display.tmp] transformation.translation[0] set from storage yrh.013:global items[{id:"yogetsu_sword"}].timelines.xz[0]

execute at @n[tag=yrh013.uuid.selected] rotated as @n[tag=yrh013.uuid.selected] run tp @n[tag=yrh013.item.yogetsu.item_display.tmp] ~ ~ ~ ~ ~

## オーナーのUUIDセット

execute at @n[tag=yrh013.uuid.selected] run \
    data modify entity @n[tag=yrh013.item.yogetsu.item_display.tmp] data.yrh013.data.Owner set from entity @s UUID

## サイズとる

execute as @n[tag=yrh013.uuid.selected] run function yrh.013:function/get_hitbox_size/.root

## サイズ入れる

execute at @n[tag=yrh013.uuid.selected] run \
    data modify entity @n[tag=yrh013.item.yogetsu.item_display.tmp] data.yrh013.data merge from storage yrh.013:function get_hitbox_size

## 横幅入れる

execute at @n[tag=yrh013.uuid.selected] as @n[tag=yrh013.item.yogetsu.item_display.tmp] store result entity @s transformation.scale[0] float 0.0001 run \
    data get entity @s data.yrh013.data.Width 25000.0
execute at @n[tag=yrh013.uuid.selected] as @n[tag=yrh013.item.yogetsu.item_display.tmp] store result entity @s transformation.scale[1] float 0.0001 run \
    data get entity @s data.yrh013.data.Width 25000.0
execute at @n[tag=yrh013.uuid.selected] as @n[tag=yrh013.item.yogetsu.item_display.tmp] store result entity @s transformation.scale[2] float 0.0001 run \
    data get entity @s data.yrh013.data.Width 25000.0

## ターゲット状態だよ～

execute as @n[tag=yrh013.uuid.selected] run \
    scoreboard players set @s yrh013.is_target 1

## tmp消す

tag @e remove yrh013.item.yogetsu.item_display.tmp
