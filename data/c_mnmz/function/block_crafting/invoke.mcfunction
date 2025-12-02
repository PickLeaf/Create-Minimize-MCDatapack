advancement revoke @s only c_mnmz:place/block_crafting
data modify storage c_mnmz:mem args append value \
    {block:"minecraft:heavy_core",function:"c_mnmz:block_crafting/place"}
execute anchored eyes run \
    function c_mnmz:ray_cast with storage c_mnmz:mem args[-1]
data remove storage c_mnmz:mem args[-1]