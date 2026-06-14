###
    execute store result storage ruby:raycast distance float 0.000001 run \
        scoreboard players get $distance ruby.raycast
    scoreboard objectives remove ruby.raycast
    kill @e[tag=ruby.raycast]
    execute at @n[tag=ruby.raycast.marker] run tp @s ^ ^ ^ ~ ~
    kill @e[tag=ruby.raycast.marker]