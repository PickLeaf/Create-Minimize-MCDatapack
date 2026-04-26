function nutlet:get_version {storage:"c_mnmz:var",path:"nutlet"}
execute if predicate c_mnmz:check_nutlet \
    run return run \
        data remove storage c_mnmz:var nutlet
data remove storage c_mnmz:var nutlet
execute unless data storage c_mnmz:config showVersion \
    run function c_mnmz:config/no_nutlet