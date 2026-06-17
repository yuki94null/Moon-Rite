function #ruby.raycast:16m

tellraw @a [{nbt:"distance",storage:"ruby:raycast"}]

execute anchored eyes run function yrh.013:debug/mcr_test with storage ruby:raycast

execute if predicate {condition:"entity_properties",entity:"this",predicate:{"minecraft:type_specific/player":{input:{}}}}