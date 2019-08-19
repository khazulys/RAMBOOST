clear
printf "\033[1;31m	 ╦═╗╔═╗╔╦╗╔╗ ╔═╗╔═╗╔═╗╔╦╗	\n"
printf "\033[1;34m	 ╠╦╝╠═╣║║║╠╩╗║ ║║ ║╚═╗ ║	\n"
printf "\033[1;31m	 ╩╚═╩ ╩╩ ╩╚═╝╚═╝╚═╝╚═╝ ╩	\n"
printf "\x1b[5;34;47m	[√]RAM BOOST By Khazul[√]\x1b[0m\n"
printf "\n\033[1;32m[01]\033[1;37mClear data system\n"
printf "\033[1;32m[02]\033[1;37mClear cache system\n"
printf "\033[1;32m[03]\033[1;37mClear DCIM system\n"
printf "\033[1;32m[04]\033[1;37mClear Download system\n"
printf "\033[1;32m[05]\033[1;37mCustom clear data\n"
read -p $'\033[1;36mPilih >>\033[1;37m ' clear
if [ $clear == 01  ]; then
termux-setup-storage
cd /sdcard
rm -rf /storage/emulated/0/Android
rm -rf /storage/emulated/0/data
sleep 2
printf "\033[1;32m[√]\033[1;37mSuccess Removed\n"
exit
fi
if [ $clear == 02  ]; then
cd /sdcard
rm -rf /storage/emulated/0/cache
sleep 2
printf "\033[1;32m[√]\033[1;37mSuccess Removed\n"
exit
fi
if [ $clear == 03 ]; then
cd /sdcard
rm -rf /storage/emulated/0/DCIM
sleep 2
printf "\033[1;32m[√]\033[1;37mSucces Removed\n"
exit
fi
if [ $clear == 04 ]; then
cd /sdcard
rm -rf /storage/emulated/0/Download
sleep 2
printf "\033[1;32m[√]\033[1;37mSucces Removed\n"
exit
fi
if [ $clear == 05 ]; then
cd /sdcard
clear
printf "\033[1;32m[]\033[1;37mWaiting for open all file\n"
sleep 3
ls
printf '\n\033[1;32m[]\033[1;37mCopas file in here\n'
read -p $'\033[1;36m>>\033[1;37m ' cpas
rm -rf /storage/emulated/0/$cpas
sleep 2
printf "\033[1;32m[√]\033[1;37mSuccess Removed\n"
fi
read -p $'\033[1;32m[?]\033[1;37mMau ulang?(y/n): ' ulang
if [ $ulang == 'y' ]; then
cd
bash boost.sh
exit
fi
fi

