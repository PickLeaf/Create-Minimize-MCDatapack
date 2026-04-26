# 注册Nutlet配置
# 配置: 是否在进入世界时打印数据包版本信息
# Config: Whether to print version info of datapack when login the world
# 接受的值: 
# acceptable vales: 
# [1b, 0b]
data modify storage nutlet:config list append value \
    {description:"Whether to print version info of Create:Minimize when login the world.",\
    name:"C Minimize:Print Version", storage_path:"c_mnmz:config showVersion", acceptable:[1b, 0b],\
    default:"1b", type:"storage"}