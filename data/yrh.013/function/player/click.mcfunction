advancement revoke @s only yrh.013:right_click

tellraw @s clicked

execute unless items entity @s weapon.* *[custom_data~{datapack:"yrh.013"}] run return fail

tellraw @s use