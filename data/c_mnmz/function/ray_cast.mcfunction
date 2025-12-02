$execute if block ~ ~ ~ $(block) \
    run return run function $(function)
#调试用 when debug
# $say $(block)
# $say $(function)
# particle minecraft:end_rod ~ ~ ~ 0.125 0.125 0.125 0 1
execute positioned ^ ^ ^0.05 \
    run function c_mnmz:ray_cast with storage c_mnmz:mem args[-1]