# item/loot
$say \
$(generation) \
$(id) \
$(damage) \
$(yrh013)
##

$loot $(generation) loot \
{                                                                               \
    "pools": [                                                                  \
        {                                                                       \
            "rolls": 1.0,                                                       \
            "entries": [                                                        \
                {                                                               \
                    "type": "item",                                             \
                    "name": "iron_sword",                                       \
                    "functions": [                                              \
                        {                                                       \
                            "function": "set_components",                       \
                            "components": {                                     \
                                "item_model": "yrh.013:$(id)",                  \
                                "item_name": [                                  \
                                    {                                           \
                                        "translate": "yrh.013:item.$(id).name", \
                                        "color": "gold"                         \
                                    }                                           \
                                ],                                              \
                                "lore": [                                       \
                                    $(id)                                       \
                                ],                                              \
                                "max_damage": 1024,                             \
                                "damage": $(damage),                            \
                                "use_effects": {                                \
                                    "can_sprint": true,                         \
                                    "speed_multiplier": 1.0                     \
                                },                                              \
                                "consumable": {                                 \
                                    "animation": "bow",                         \
                                    "consume_seconds": 2147483647,              \
                                    "has_consume_particles": false,             \
                                    "sound": "intentionally_empty"              \
                                },                                              \
                                "food": {                                       \
                                    "can_always_eat": true,                     \
                                    "nutrition": 0,                             \
                                    "saturation": 0                             \
                                },                                              \
                                "custom_data": {                                \
                                    "yrh013": $(yrh013)                         \
                                }                                               \
                            }                                                   \
                        }                                                       \
                    ]                                                           \
                }                                                               \
            ]                                                                   \
        }                                                                       \
    ]                                                                           \
}