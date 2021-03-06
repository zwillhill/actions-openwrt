#!/bin/bash
#
# OpenWrt K3 stable Mod.sh
#

# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
#============================================================
# Modify files permission
#chmod -R 755 files
#============================================================
# Display temperature on index (not work on 19.07)
#sed -i "/<tr><td width=\"33%\"><%:CPU usage (%)%>/a \ \t\t<tr><td width=\"33%\"><%:CPU Temperature %>（℃）</td><td><%=luci.sys.exec(\"sed 's/../&./g' /sys/class/thermal/thermal_zone0/temp|cut -c1-5\")%>℃</td></tr>"  feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_status/index.htm
#============================================================
#替换golang为1.16版本以支持xray-core
rm -rf feeds/packages/lang/golang
svn co https://github.com/openwrt/packages/trunk/lang/golang feeds/packages/lang/golang
#============================================================
