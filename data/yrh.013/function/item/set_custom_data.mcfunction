# item/set_custom_data
data remove storage yrh.013:global tmp

kill @e[tag=yrh013.tmp]
summon chest_minecart ~ ~-100000 ~ {Tags:[yrh013.tmp]}

item replace entity @n[tag=yrh013.tmp] container.0 from entity @s[tag=yrh013.player.hasitem.mainhand] weapon.mainhand
item replace entity @n[tag=yrh013.tmp] container.0 from entity @s[tag=yrh013.player.hasitem.offhand] weapon.offhand
# data modify storage yrh.013:global tmp.components set from entity @s[tag=yrh013.player.hasitem.mainhand] SelectedItem.components
# data modify storage yrh.013:global tmp.components set from entity @s[tag=yrh013.player.hasitem.offhand] equipment.offhand.components

# data modify storage yrh.013:global tmp.yrh013 set from storage yrh.013:global tmp.components."minecraft:custom_data".yrh013

# data modify storage yrh.013:global tmp.damage set value 0
# data modify storage yrh.013:global tmp.damage merge from storage yrh.013:global tmp.components.damage
# data modify storage yrh.013:global tmp.id set from storage yrh.013:global tmp.yrh013.id

# tellraw @s [{nbt:"tmp.components.'minecraft:custom_data'.yrh013",storage:"yrh.013:global"}]
# tellraw @s [{nbt:"tmp.yrh013.data",storage:"yrh.013:global"}]
$execute unless data entity @n[tag=yrh013.tmp] Items[].components."minecraft:custom_data".yrh013.data.targets[{UUID:$(UUID)}] run \
    data modify entity @n[tag=yrh013.tmp] Items[{Slot:0b}].components."minecraft:custom_data".yrh013.data.targets append value {UUID:$(UUID)}
# $data modify storage yrh.013:global tmp.yrh013.data.targets append value {UUID:$(UUID)}
# tellraw @s [{nbt:"tmp.yrh013.data",storage:"yrh.013:global"}]

tellraw @s [{nbt:"Items[{Slot:0b}].components.'minecraft:custom_data'.yrh013",entity:"@n[tag=yrh013.tmp]"}]

execute if entity @s[tag=yrh013.player.hasitem.mainhand] run item replace entity @s weapon.mainhand from entity @n[tag=yrh013.tmp] container.0
execute if entity @s[tag=yrh013.player.hasitem.offhand] run item replace entity @s weapon.offhand from entity @n[tag=yrh013.tmp] container.0
# execute if entity @s[tag=yrh013.player.hasitem.mainhand] run data modify storage yrh.013:global tmp.generation set value "replace entity @s weapon.offhand"
# execute if entity @s[tag=yrh013.player.hasitem.offhand] run data modify storage yrh.013:global tmp.generation set value "replace entity @s weapon.offhand"

# tellraw @s [{nbt:"tmp.damage",storage:"yrh.013:global"}]
# tellraw @s [{nbt:"tmp.id",storage:"yrh.013:global"}]
# tellraw @s [{nbt:"tmp.yrh013",storage:"yrh.013:global"}]
# tellraw @s [{nbt:"tmp.generation",storage:"yrh.013:global"}]

# function yrh.013:item/loot with storage yrh.013:global tmp
# data
# id
# type
kill @e[tag=yrh013.tmp]
say loot
