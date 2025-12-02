execute positioned ~ ~-2 ~ \
    unless predicate c_mnmz:block_crafting/place \
    run return fail

setblock ~ ~ ~ minecraft:air
data modify block ~ ~-1 ~ disabled_slots \
    set value [I;0,1,2,3,5,6,7,8]
setblock ~ ~-2 ~ minecraft:repeating_command_block[facing=down]{\
    Command:"function c_mnmz:0",TrackOutput:0b,auto:1b}
setblock ~ ~-3 ~ minecraft:chain_command_block[facing=down,conditional=true]{\
    Command:"",auto:1b}

playsound block.anvil.place block @a