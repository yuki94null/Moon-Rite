# player/click

## やることやる

advancement revoke @s only yrh.013:right_click

## useに送る

execute if items entity @s weapon.* *[custom_data~{yrh013:{type:"item"}}] run \
function yrh.013:item/using
