execute unless predicate c_mnmz:block_crafting/complete \
    run return run function c_mnmz:block_crafting/when_destory

execute if block ~ ~1 ~ \
    minecraft:crafter[triggered=true] \
    run return fail

execute unless data block ~ ~1 ~ \
    {crafting_ticks_remaining:0} \
    run return fail

execute unless data block ~ ~1 ~ Items[0].id \
    run return fail

execute if function c_mnmz:block_crafting/recipe_changed \
    if function c_mnmz:block_crafting/update_recipe run return fail

data modify block ~ ~1 ~ crafting_ticks_remaining set value 20
return 1