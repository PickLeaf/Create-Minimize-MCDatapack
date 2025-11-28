data modify entity @s item.id set \
    value "create:crushing_wheel"
execute unless data entity @s item.id run \
    data modify storage c_mnmz:mem arg.fail set value 1b
kill @s