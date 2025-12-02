return run \
    data modify block ~ ~ ~ \
    components."minecraft:custom_data".recipe \
    set from block ~ ~1 ~ \
    Items[0].id