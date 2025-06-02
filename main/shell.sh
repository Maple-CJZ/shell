#!/usr/bin/env bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH


sh_ver="1.0.0"




 #0安装纯净版Debian12
install_debian12(){
	bash <(curl -s -L https://raw.githubusercontent.com/veip007/Linux-NetSpeed/master/tcp.sh)curl -O https://raw.githubusercontent.com/bin456789/reinstall/main/reinstall.sh &&  bash reinstall.sh debian 12 && reboot
}
#1安装weget
install_weget(){
	apt install -y curl sudo wget
}
#2安装XDD
install_xdd(){
	apt-get install xxd
}
#3安装nano
install_nano(){
	sudo apt install nano
}
#4更新软件列表
update_all{
    sudo apt update && sudo apt upgrade -y
}
#5安装宝塔开心版
install_btkxb(){
	wget -O install.sh http://io.bt.sb/install/install-ubuntu_6.0.sh && bash install.sh
}
#6亚洲云工具箱-国内服务器
tools_yzygn(){
	curl -L https://gitee.com/krhzj/LinuxTool/raw/main/Linux.sh -o Linux.sh && chmod +x Linux.sh && bash Linux.sh
}
#7亚洲云工具箱-国外服务器
tools_yzygw(){
        curl -L https://raw.githubusercontent.com/vpsad/LinuxTool/main/Linux.sh -o Linux.sh && chmod +x Linux.sh && bash Linux.sh
}
#838合一脚本-国内服务器
tools_38hygn(){
	bash <(curl -s -L https://git.io/JPj82)
}
#938合一脚本-国外服务器
tools_38hygw(){
	bash <(curl -sSL https://raw.githubusercontent.com/shidahuilang/SS-SSR-TG-iptables-bt/main/sh/DD.sh)
}
#10HTTP+SCOKS5代理搭建
http+scoks5(){
	curl -O http://www.yeexun.net/n1/install.sh&&chmod +x install.sh&&./install.sh
}
#11安装Mtproxy代理
install_mtproxy(){
	curl -sSL https://raw.githubusercontent.com/vuvanthe64/mtproxy/main/install_mtproxy.sh | sudo bash
}
#12安装3X-UI
install_3xui(){
	bash <(curl -Ls https://raw.githubusercontent.com/xeefei/3x-ui/master/install.sh)
}
#13一键安装Clash
install_clash(){
	git clone --branch master --depth 1 https://gh-proxy.com/https://github.com/nelvko/clash-for-linux-install.git \
  && cd clash-for-linux-install \
  && sudo bash install.sh
}
#14一键搭建Frps服务器（docker端）
install_frps(){
	docker run -d --name frps_qy --restart always --network host -v /www/wwwroot/frps/frps.toml:/etc/frp/frps.toml frps_qy:latest
}

action=$1
if [[ "${action}" == "monitor" ]]; then
	crontab_monitor_goflyway
else
echo && echo -e " 


  
+-------------------------------------------------------------+
|                          轻云专用                             | 
|                     Debian一键管理脚本                        |                   
|                          个人网站                            |
|                       https://qycnas.cn                     |                     
+-------------------------------------------------------------+
 ${Green_font_prefix}1.${Font_color_suffix}  安装纯净版Debian12
 ${Green_font_prefix}2.${Font_color_suffix}  安装weget
 ${Green_font_prefix}3.${Font_color_suffix}  安装XDD
 ${Green_font_prefix}4.${Font_color_suffix}  安装nano
 ${Green_font_prefix}5.${Font_color_suffix}  更新软件列表
 ${Green_font_prefix}6.${Font_color_suffix}  安装宝塔开心版
 ${Green_font_prefix}7.${Font_color_suffix}  亚洲云工具箱-国内服务器
 ${Green_font_prefix}8.${Font_color_suffix}  亚洲云工具箱-国外服务器
 ${Green_font_prefix}9.${Font_color_suffix}  38合一脚本-国内服务器
 ${Green_font_prefix}10.${Font_color_suffix} 38合一脚本-国外服务器
 ${Green_font_prefix}11.${Font_color_suffix} HTTP+SCOKS5代理搭建
 ${Green_font_prefix}12.${Font_color_suffix} 安装Mtproxy代理
 ${Green_font_prefix}13.${Font_color_suffix} 安装3X-UI
 ${Green_font_prefix}14.${Font_color_suffix} 一键安装Clash
 ${Green_font_prefix}15.${Font_color_suffix} 一键搭建Frps服务器（docker端）
 " && echo
  
fi
echo
read -e -p " 请输入数字 [0-14]:" num
case "$num" in
	0)
	install_debianl2
	;;
	1)
	install wege
	;;
	2)
	install_xdd
	;;
	3)
	install nano
	;;
	4)
	update all
	;;
	5)
	install_btkxb
	;;
	6)
	tools_yzygn
	;;
	7)
	tools_yzygw
	;;
	8)
	tools_38hygn
	;;
	9)
	tools_38hygw
	;;
	10)
	http+scoks5
	;;
	11)
	installmtproxy
	;;
	12)
	install_3xui
	;;
	13)
	install_clash
	;;
	14)
	install_frps
	;;
	*)
	echo "请输入正确数字 [0-14]"
	;;
 esac
 
