# item/set_custom_data
data remove storage yrh.013:global tmp

data modify storage yrh.013:global tmp.components set from entity @s[tag=yrh013.player.hasitem.mainhand] SelectedItem.components
data modify storage yrh.013:global tmp.components set from entity @s[tag=yrh013.player.hasitem.offhand] equipment.offhand.components

data modify storage yrh.013:global tmp.yrh013 set from storage yrh.013:global tmp.components."minecraft:custom_data".yrh013

data modify storage yrh.013:global tmp.damage set value 0
data modify storage yrh.013:global tmp.damage merge from storage yrh.013:global tmp.components.damage
data modify storage yrh.013:global tmp.id set from storage yrh.013:global tmp.yrh013.id

$data modify storage yrh.013:global tmp.yrh013.data.targets append value {UUID:$(UUID)}

execute if entity @s[tag=yrh013.player.hasitem.mainhand] run data modify storage yrh.013:global tmp.generation set value "replace entity @s weapon.offhand"
execute if entity @s[tag=yrh013.player.hasitem.offhand] run data modify storage yrh.013:global tmp.generation set value "replace entity @s weapon.offhand"

tellraw @s [{nbt:"tmp.damage",storage:"yrh.013:global"}]
tellraw @s [{nbt:"tmp.id",storage:"yrh.013:global"}]
tellraw @s [{nbt:"tmp.yrh013",storage:"yrh.013:global"}]
tellraw @s [{nbt:"tmp.generation",storage:"yrh.013:global"}]

function yrh.013:item/loot with storage yrh.013:global tmp
# data
# id
# type

say loot
