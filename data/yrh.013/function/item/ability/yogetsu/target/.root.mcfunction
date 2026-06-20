# item/ability/yogetsu/target

## ownerにタグ付けといなければ死ぬ

function yrh.013:item/ability/owner_exist_check with entity @s data.yrh013.data

## 場所を合わせる

execute positioned as @n[tag=yrh013.item.target.tmp] run tp @s ~ ~ ~ 0 0

## フレームみたいなもん 進める

execute store result storage yrh.013:global tmp.Index int 1.0 run scoreboard players add @s yrh013.global 1

execute if score @s yrh013.global matches 22.. store result storage yrh.013:global tmp.Index int 1.0 run scoreboard players set @s yrh013.global 22


## フレームに従って処理

function yrh.013:item/ability/yogetsu/target/item_display/.root with storage yrh.013:global tmp

## ownerの一時タグ消す

tag @e[tag=yrh013.item.target.tmp] remove yrh013.item.target.tmp
