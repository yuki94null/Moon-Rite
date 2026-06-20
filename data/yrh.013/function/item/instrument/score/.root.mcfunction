
execute if predicate {condition:"entity_properties",entity:"this",predicate:{"minecraft:type_specific/player":{input:{sprint:true}}}} if entity @s[tag=yrh013.item.moon_sword.full_moon] run particle entity_effect{color:[1.00000f, 0.74902f, 0.67451f,0.5f]} ~ ~1 ~ 0.125 0.45 0.125 0.125 1 normal @a
execute if predicate {condition:"entity_properties",entity:"this",predicate:{"minecraft:type_specific/player":{input:{sprint:true}}}} if entity @s[tag=yrh013.item.moon_sword.new_moon] run particle entity_effect{color:[0.082f, 0.345f, 0.482f,0.5f]} ~ ~1 ~ 0.0 0.45 0.125 0.125 1 normal @a

$execute unless function yrh.013:item/instrument/score/$(Index) run return run execute anchored eyes run particle note ^ ^1.0 ^ 0.0 0.0 0.0 0.125 1 normal @a
