# player/click

## やることやる

say use

advancement revoke @s only yrh.013:right_click

## 違ったら返す

execute unless items entity @s weapon.* *[custom_data~{yrh013:{type:"item"}}] run \
    return fail

### どっちの手か見とく

execute if items entity @s weapon.mainhand *[custom_data~{yrh013:{type:"item"}}] run \
    tag @s add yrh013.player.hasitem.mainhand

execute if items entity @s[tag=!yrh013.player.hasitem.mainhand] weapon.offhand *[custom_data~{yrh013:{type:"item"}}] run \
    tag @s add yrh013.player.hasitem.offhand

execute anchored eyes positioned ^ ^ ^ run function yrh.013:function/looking_entity/.root


execute if entity @n[tag=yrh013.function.looking_entity] run function yrh.013:item/set_custom_data with entity @n[tag=yrh013.function.looking_entity]

tag @s remove yrh013.player.hasitem.mainhand
tag @s remove yrh013.player.hasitem.offhand