#!/bin/bash
# 纯净版 - 最小化配置

# 设置默认 LAN IP 为 192.168.31.2
sed -i 's/192.168.1.1/192.168.31.2/g' package/base-files/files/bin/config_generate

echo "=== diy.sh 执行完成（纯净版，无第三方插件） ==="
