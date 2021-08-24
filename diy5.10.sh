#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=5.10/g' ./target/linux/x86/Makefile

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
# sed -i '$a src-git jerryk https://github.com/jerrykuku/openwrt-package' feeds.conf.default
sed -i '$a src-git ssr https://github.com/fw876/helloworld' feeds.conf.default
sed -i '$a src-git diy https://github.com/firker/diy-ziyong' feeds.conf.default
sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
sed -i '$a src-git jerryk https://github.com/jerrykuku/openwrt-package' feeds.conf.default
sed -i '$a src-git jell https://github.com/kenzok8/jell' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
# sed -i '$a src-git bypass https://github.com/garypang13/openwrt-bypass' feeds.conf.default
# git clone -b master https://github.com/vernesong/OpenClash.git package/OpenClash
# svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash
git clone -b 18.06 https://github.com/garypang13/luci-theme-edge.git package/luci-theme-edge
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
git clone https://github.com/sirpdboy/luci-theme-opentopd.git package/luci-theme-opentopd
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
git clone https://github.com/cnsilvan/luci-app-unblockneteasemusic.git package/luci-app-unblockneteasemusic
git clone https://github.com/xiaozhuai/luci-app-filebrowser.git package/luci-app-filebrowser
git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman
git clone https://github.com/frainzy1477/luci-app-clash.git package/luci-app-clash
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
git clone https://github.com/garypang13/smartdns-le.git package/smartdns-le
# git clone https://github.com/garypang13/luci-app-dnsfilter.git package/luci-app-dnsfilter
# git clone https://github.com/godros/luci-app-godproxy.git package/luci-app-godproxy
# git clone https://github.com/BCYDTZ/luci-app-UUGameAcc.git package/luci-app-UUGameAcc
rm -rf ./package/lean/luci-app-qbittorrent
