execute at @s positioned ~ ~1 ~ run return run \
    function c_mnmz:block_crafting/if_predicate_ma with entity @s \
    Items[-1].components."minecraft:custom_data"."c_mnmz:cache".value