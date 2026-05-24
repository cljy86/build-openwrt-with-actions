#!/bin/bash
# Redmi AX3000 (IPQ5000) 自定义编译脚本

# 设置默认 LAN IP
sed -i 's/192.168.1.1/192.168.31.2/g' package/base-files/files/bin/config_generate

# 设置默认主题为 Argon
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 添加第三方软件源
echo 'src-git kenzok8 https://github.com/kenzok8/openwrt-packages' >> feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small' >> feeds.conf.default

# 克隆 AdGuardHome
git clone https://github.com/stevenjoezhang/luci-app-adguardhome.git package/ADGH 2>/dev/null || true

echo "=== diy.sh 执行完成 ==="
