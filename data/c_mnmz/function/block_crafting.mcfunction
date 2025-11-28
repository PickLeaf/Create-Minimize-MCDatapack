execute unless items entity @s container.26 \
minecraft:written_book \
    run loot replace entity @s container.26 loot c_mnmz:cache_book

execute unless data entity @s \
    Items[1] run return fail
execute if data entity @s \
    Items[2] run return fail

data modify entity @s Items[0].Slot set value 0b

execute if function c_mnmz:block_crafting/recipe_changed \
    if function c_mnmz:block_crafting/update_recipe run return fail

execute if function c_mnmz:block_crafting/if_predicate \
    run function c_mnmz:block_crafting/success