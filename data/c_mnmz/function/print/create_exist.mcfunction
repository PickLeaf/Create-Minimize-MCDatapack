execute unless loaded ~ ~ ~ run \
    data modify storage c_mnmz:mem arg.forceLoad set value 1b
execute if data storage c_mnmz:mem arg{forceLoad:1b} run \
    forceload add ~ ~

execute summon minecraft:item_display run \
    function c_mnmz:print/item_display

execute if data storage c_mnmz:mem arg{forceLoad:1b} run \
    forceload remove ~ ~
data remove storage c_mnmz:mem arg.forceLoad

data modify storage c_mnmz:print cmd.create_exist \
        set value '{"text": ""}'

execute if data storage c_mnmz:mem arg{fail:1b} run \
    data modify storage c_mnmz:print cmd.create_exist \
        set value '{"translate": "mnmz.create_not_exist",\
        "fallback": "(The CREATE mod is not installed. Please install it first!)",\
        "color": "red"}'

data remove storage c_mnmz:mem arg