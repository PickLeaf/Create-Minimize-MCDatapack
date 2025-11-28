data remove entity @s \
    Items[-1].components."minecraft:custom_data"."c_mnmz:cache".value
function c_mnmz:block_crafting/update_recipe_ma with entity @s \
    Items[0]
execute if data entity @s \
Items[-1].components."minecraft:custom_data"."c_mnmz:cache".value \
    run return fail
return 1