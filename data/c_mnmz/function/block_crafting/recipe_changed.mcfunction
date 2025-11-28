return run \
    data modify entity @s \
    Items[-1].components."minecraft:custom_data"."c_mnmz:cache".input \
    set from entity @s \
    Items[0].id