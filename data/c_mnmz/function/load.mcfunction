function c_mnmz:recipe/block_crafting

function c_mnmz:config
function #c_mnmz:config

execute unless data storage c_mnmz:config \
{version:"V0.3"} run return \
    run function c_mnmz:version_changed {version:"V0.3"}

execute if data storage c_mnmz:config {showVersion:1b} \
    run function c_mnmz:print/info