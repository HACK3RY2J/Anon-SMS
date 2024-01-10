#!/bin/bash
# Author: HACK3RY2J
# Description: Send anonymous text messages

# Text Formatting 
NC='\033[0m'              # RESET
BLINK=$(tput blink)
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green



function banner() {
   
   clear
   echo -e "     ████████████████████████████████████████████████████████████████████
     ████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒████
     ██▒▒██         ___   _  ______  _  __    ______  _______      ██▒▒██
     ██  ▒▒██      / _ | / |/ / __ \/ |/ /___/ __/  |/  / __/    ██▒▒  ██
     ██    ▒▒██   / __ |/    / /_/ /    /___/\ \/ /|_/ /\ \    ██▒▒    ██
     ██      ▒▒██/_/ |_/_/|_/\____/_/|_/   /___/_/  /_/___/  ██▒▒      ██
     ██        ▒▒██                                    V1.4██▒▒        ██
     ██          ▒▒████████████████████████████████████████▒▒          ██
     ██            ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒            ██
     ██     Coded by: https://github.com/HACK3RY2J                     ██
     ██     Youtube : https://www.youtube.com/c/PandaHackers           ██
     ██   Instagram : https://instagram.com/Panda_Hackers_Official     ██
     ██                                                                ██
     ████████████████████████████████████████████████████████████████████
     ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ "
   
   echo " "
   echo -e "$BGreen Hello User... $NC"
   echo -e "$Green   Welcome to Anon-SMS $NC"
   echo -e "$Green     With Anon-SMS You can send, Anonymous Text Message $NC"
   sleep 1
   echo -e "$Green       Let's begin... $NC"
   echo " "
   sleep 2
   read -n 1 -s -r -p "     Press any key to continue"
}

function byemsg() {
   echo -e "$Green Done... $NC"
   sleep 1
   echo -e "$Green Closing Anon-SMS... $NC"
   sleep 1
   echo " "
   exit
}

function VERSION() {
   echo " "
   echo -e "$BGreen Anon-SMS version: v1.5(Basic)"
   echo " "
}

function SENDSMS() {
    echo ""
   echo -e "$Red      Enter Phone Number Like Country Code>Number"
   echo -e "$Yellow      For Example country code = $Blue 91 $Green And Phone Number = $Blue 5566778899"
   echo -e "$Yellow      Enter Number as > $Blue 915566778899"
   echo -e "$Green      Enter Phone Number With Country Code: $NC"
   read PHONE
   
   echo -e "$Green \nEnter Message: $NC"
   read SMS

   API_FILE=".Apis"
   if [ -e "$API_FILE" ]; then
      API=$(head -n 1 "$API_FILE")
      echo "API Key : $API"
   else
      API='textbelt'
      echo "Using Default API : $API"
   fi

   SMSRESULT=$(curl -# -X POST https://textbelt.com/text --data-urlencode phone="$PHONE" --data-urlencode message="$SMS" -d key="$API")
   
   if grep -q true <<<"$SMSRESULT"; then
        echo -e "\n${BGreen}  SUCCESS  ${NC}"
    else
        echo -e "\n${BRed}  FAILED  ${NC}"
    fi

    echo -e "\n${Yellow}----------------------------------------------${NC}"
    echo "$SMSRESULT"
    echo -e "${Yellow}----------------------------------------------${NC}\n"
    byemsg
}

function SMSCHECK() {
   echo -e "\n$Green Enter Text ID (example 12589): $NC"
   read -r TEXTID
   STATUSRESULT=$(curl -# https://textbelt.com/status/"$TEXTID")
   echo -e "\n$BGreen Final Response (JSON): $NC"
   echo " "
   echo -e "$BGreen ---------------------------------------------- $NC"
   echo "$STATUSRESULT"
   echo -e "$BGreen ---------------------------------------------- $NC"
   echo "  "
}

function helpfunction() {
   echo -e "\n$BGreen Available opions: $NC"
   echo -e " "
   echo -e "$BGreen Show this page: --help $NC"
   echo -e "$BGreen Check text message status: --statuscheck $NC"
   echo -e "$BGreen Send text message: --sendsms $NC"
   echo -e "$BGreen Print version: --version $NC"
   echo "  "
   echo "  "
}

if [ "$1" == "--statuscheck" ]

then
   banner
   SMSCHECK
   byemsg

elif [ "$1" == "--sendsms" ]

then
   banner
   SENDSMS
   byemsg

elif [ "$1" == "--help" ]

then
   helpfunction
   
elif [ "$1" == "--version" ]
   
then
   VERSION

elif [ $# -le 0 ]

then
   banner
   SENDSMS
   byemsg

else
   echo " "
   echo -e "$Red No such argument available!$NC"
   echo -e "$Red Use$NC $BRed--help$NC $Red to display options.$NC"
   echo " "

fi
