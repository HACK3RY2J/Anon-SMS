#!/usr/bin/env bash

clear
echo -e "\e[4;31m Panda Hackers !!! \e[0m"
echo -e "\e[1;32m Presents \e[0m"
echo -e "\e[1;34m"
[ `command -v figlet` ] && figlet -f slant Anon-SMS
echo "Press Enter To Launch"
read a1
if [[ -s update.pandahackers ]];then
echo "All Requirements Found...."
else
echo 'Installing Requirements....'
echo .
echo .
apt install figlet toilet python3 curl ruby python3-pip -y
curl https:bootstrap.pypa.io/get-pip.py -o get-pip.py && python get-pip.py
gem install lolcat
echo This Tool Is Created By HACK3RY2J
echo This Script Is Created By Panda Hackers HACK3RY2J >update.pandahackers
echo Requirements Installed....
echo Press Enter To Continue...
read upd
fi
while :
do
rm *.xxx >/dev/null 2>&1
clear
echo -e "\e[1;31m"
figlet -f slant Anon-SMS | lolcat
echo -e "\e[1;34m Created By \e[1;32m"  #blue color
toilet -f mono12 -F border PH | lolcat
echo -e "\e[4;34mThis Tool Is Created By Panda Hackers \e[0m" #underline+blue
echo -e "\e[1;34mFor Any Queries Mail Us!!!\e[0m"
echo -e "\e[1;32m     Mail : Hack3ry2j@gmail.com \e[0m" #yellow
echo -e "\e[4;32m  YouTube : https://youtube.com/c/PandaHackers/ \e[0m" #green
echo -e "\e[1;34m Telegram : https://t.me/ItzAnonSMS \e[0m"
echo " "
echo -e "\e[4;31mRead Instruction Carefully !!! \e[0m" #red
echo " "
echo "Enter 1 To  Run Anon-SMS "
echo "Enter 2 To  Track Anon-SMS "
echo "Enter 3 To  Add Premium API "
echo "Enter 4 To  Update "
echo "Enter 5 To  Check Features "
echo "Enter 6 To  View Tutorials "
echo "Enter 7 To  Help "
echo "Enter 8 To  Exit "
read ch
if [ $ch -eq 1 ];then
clear
echo -e "\e[1;32m"
rm *.xxx >/dev/null 2>&1
python3 send.py
rm *.xxx >/dev/null 2>&1
exit 0
elif [ $ch -eq 2 ];then
clear
echo -e "\e[1;32m"
echo 'Track Anon-SMS'> track.xxx
python3 send.py track
rm *.xxx >/dev/null 2>&1
exit 0
elif [ $ch -eq 3 ];then
clear
echo -e "\e[1;32m"
echo 'Add API in Anon-SMS'> add.xxx
python3 send.py Add
rm *.xxx >/dev/null 2>&1
exit 0
elif [ $ch -eq 4 ];then
clear
apt install git -y
echo -e "\e[1;34m Requesting Update From Source..."
echo -e "\e[1;34m Request Attempt Successful.."
echo -e "\e[1;34m Updating Now..."
git clone https://github.com/HACK3RY2J/Anon-SMS.git
if [[ -s Anon-SMS/Run.sh ]];then
cd Anon-SMS
cp -r -f * .. > temp
cd ..
rm -rf  Anon-SMS >> temp
rm update.pandahackers >> temp
rm temp
chmod +x Run.sh
fi
echo -e "\e[1;32m Anon-SMS Will Refresh Now..."
echo -e "\e[1;32m All The Required Packages Have Been Installed..."
echo -e "\e[1;34m Press Enter To Refresh..."
read a6
./Run.sh
exit
elif [ $ch -eq 5 ];then
clear
echo -e "\e[1;33m"
figlet -f slant Anon-SMS | lolcat
echo -e "\e[1;34mCreated By \e[1;34m"
toilet -f mono12 -F border PH | lolcat
echo  " "
echo -e "\e[1;32m                   Features\e[1;34m"
echo "  Ultra-Fast-Smooth Sending"
echo "  International Sending"
echo "  Tracking "
echo "  Automatic Future Updates"
echo "  Easy To Use And Embed in Code"
echo""
echo -e "\e[1;32m                   Contributors\e[1;33m"
echo -e "\e[1;33m      [*]  Panda Hackers   \e[1;31m"
echo "         [-] Mail At: pandahacker127@gmail.com"
echo -e "\e[1;33m      [*]  Telegram   \e[1;31m"
echo "         [-] Ping At: https://t.me/ItzAnonSMS/"
echo -e "\e[1;33m      [*]  HACK3RY2J   \e[1;31m"
echo "         [-] Mail At: HACK3RY2J@gmail.com"
echo ""
echo ""
echo -e "\e[1;31m This is Only For Educational Purposes or To Prank.\e[0m"
echo -e "\e[1;31m Do not Use This To Irritate Others. \e[0m"
echo -e "\e[1;31m Do not Use This To Harm Others. \e[0m"
echo -e "\e[1;31m We Are Not Responsible For The Misuse Of The Script. \e[0m"
echo -e "\e[1;32m Update If Doesn't Work.\e[0m"
echo  " "
echo -e "\e[4;31m That's All !!!\e[0m"
echo -e "\e[1;34m For Any Queries Mail Us!!!\e[0m"
echo -e "\e[1;32m       Mail : HACK3RY2J@gmail.com \e[0m"
echo -e "\e[1;32m   Telegram : https://t.me/itzAnonSMS     \e[0m"
echo -e "\e[4;32m    YouTube : https://www.youtube.com/c/PandaHackers \e[0m"
echo "Press Enter To Return To Main Menu"
read a3
clear
elif [ $ch -eq 6 ];then
clear
echo "  WARNING!!!"
echo "  "
echo "  Some videos are Outdated, Anon-SMS may not work as Shown in videos. "
echo "  Some Features May Not work Globally."
echo "  Thank You For Using Anon-SMS"
echo "  "
echo "  "
echo "  1. How To Send SMS Using Anon-SMS"
echo "  2. How to Send Unlimited SMS for Free "
echo "  3. Is Anon-SMS Still Working "
echo "  4. Other "
read tut
if [ $tut -eq 1 ];then
clear
echo -e "\e[1;33m"
figlet -f slant Anon-SMS | lolcat
echo  " "
os.system('termux-open-url https://youtu.be/Z2EHj4JQHCw')
echo  " "
echo  "Press Enter To Return To Main Menu"
read a3
clear
if [ $tut -eq 2 ];then
clear
echo -e "\e[1;33m"
figlet -f slant Anon-SMS | lolcat
echo  " "
os.system('termux-open-url https://youtu.be/2hkDHCQguA4')
echo  " "
echo  "Press Enter To Return To Main Menu"
read a3
clear
if [ $tut -eq 3 ];then
clear
echo -e "\e[1;33m"
figlet -f slant Anon-SMS | lolcat
echo  " "
os.system('termux-open-url https://youtu.be/2_n9OWeFKks')
echo  " "
echo  "Press Enter To Return To Main Menu"
read a3
clear
if [ $tut -eq 4 ];then
clear
echo -e "\e[1;33m"
figlet -f slant Anon-SMS | lolcat
echo  " "
os.system('termux-open-url https://youtube.com/PandaHackers')
echo  " "
echo  "Press Enter To Return To Main Menu"
read a3
clear
elif [ $ch -eq 7 ];then
clear
echo "  1. Error E.164 format.... "
echo "  2. NameError: name 'requests' is not defined "
echo "  3. Some dependencies are not installed "
echo "  4. Text messages are temporarily disabled "
echo "  5. other "
read opt
if [ $opt -eq 1 ];then
clear
echo -e "\e[1;33m"
figlet -f slant Anon-SMS | lolcat
echo  " "
echo  " 1. Error E.164 format.... "
echo  " Occurance : Error E.164 occurs when your country is not in the list to send a free SMS. "
echo  " Solution  : You can use premium api key from Textbelt.com to send SMS. "
echo  " "
echo  "Press Enter To Return To Main Menu"
read a3
clear
if [ $opt -eq 2 ];then
clear
echo -e "\e[1;33m"
figlet -f slant Anon-SMS | lolcat
echo  " "
echo  " 2. NameError: name 'requests' is not defined "
echo  " Occurance : When 'requests' module is missing "
echo  " Solution  : Update the Anon-SMS "
echo  " "
echo  "Press Enter To Return To Main Menu"
read a3
clear
if [ $opt -eq 3 ];then
clear
echo -e "\e[1;33m"
figlet -f slant Anon-SMS | lolcat
echo  " "
echo  " 3. Some dependencies are not installed "
echo  " Occurance : When some required module are missing "
echo  " Solution  : Update Anon-SMS "
echo  " "
echo  "Press Enter To Return To Main Menu"
read a3
clear
if [ $opt -eq 4 ];then
clear
echo -e "\e[1;33m"
figlet -f slant Anon-SMS | lolcat
echo  " "
echo  " 4. Text messages are temporarily disabled "
echo  " Occurance : When the servers are under maintanance "
echo  " Solution  : Try after sometime "
echo  " "
echo  "Press Enter To Return To Main Menu"
read a3
clear
if [ $opt -eq 5 ];then
clear
echo -e "\e[1;33m"
figlet -f slant Anon-SMS | lolcat
echo  " "
echo  " 5. Other "
echo  " Solution  : Join the Telegram chat and post your query "
echo  " "
echo  "Press Enter To Return To Main Menu"
read a3
clear
elif [ $ch -eq 8 ];then
clear
echo -e "\e[1;31m"
figlet -f slant Anon-SMS | lolcat
echo -e "\e[1;34m Created By \e[1;32m"
toilet -f pagga -F border HACK3RY2J | lolcat
echo -e "\e[1;34m For Any Queries Mail Us!!!\e[0m"
echo -e "\e[1;32m        Mail: HACK3RY2J@gmail.com \e[0m"
echo -e "\e[1;32m    Telegram: https://t.me/ItzAnonSMS \e[0m"
echo -e "\e[4;32mYouTube Page: https://www.youtube.com/c/PandaHackers/ \e[0m"
echo " "
exit 0
else
echo -e "\e[4;32m Invalid Input Detected !!! \e[0m"
echo "Press Enter To Return To Main Menu"
read a3
clear
fi
done
