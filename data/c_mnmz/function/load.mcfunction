function c_mnmz:config/init

execute unless data storage c_mnmz:config \
{version:"V0.4"} run return \
    run function c_mnmz:version_changed {version:"V0.4"}

execute if data storage c_mnmz:config {showVersion:1b} \
    run function c_mnmz:print/info