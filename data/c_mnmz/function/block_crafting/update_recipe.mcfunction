data remove block ~ ~-1 ~ Command
data remove storage c_mnmz:mem compound
function c_mnmz:block_crafting/get_recipe with block ~ ~1 ~ \
    Items[0]
execute unless data storage c_mnmz:mem compound \
    run return 1
execute positioned ~ ~-1 ~ run \
    function c_mnmz:block_crafting/set_command with storage c_mnmz:mem compound
data remove storage c_mnmz:mem compound
return fail