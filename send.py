#!/usr/bin/env python
import os
import time
import sys
import random

try:
    import requests
except ImportError:
    print('Error !! : Some dependencies are not installed')
    print('Type \'bash requirements.sh\' to install all required packages')
    exit()

# colors
yellow='\033[93m'
gren='\033[92m'
cyan='\033[96m'
pink='\033[95m'
red='\033[91m'
b='\033[1m'
W = '\033[0m'
colors = ['\033[1;31m', '\033[1;32m', '\033[1;33m', '\033[1;34m', '\033[1;35m', '\033[1;36m']

# The Credit For This Code Goes To Panda Hackers https://github.com/HACK3RY2J/
# And The Contributors Mentioned At https://github.com/HACK3RY2J/ANon-SMS/
# If You Wanna Take Credits, Please Look Yourself Again!!

def clr():
	if os.name == 'nt':
		os.system('cls')
	else:
		os.system('clear')

def banner():
    clr()
    logo = """                                                  
     \033[0m████████████████████████████████████████████████████████████████████
     \033[0m████\033[91m▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒\033[0m████
     \033[0m██\033[91m▒▒\033[0m██         \033[93m___   _  ______  _  __ \033[94m   ______  _______      \033[0m██\033[91m▒▒\033[0m██
     \033[0m██  \033[91m▒▒\033[0m██      \033[93m/ _ | / |/ / __ \/ |/ /_\033[94m__/ __/  |/  / __/    \033[0m██\033[91m▒▒  \033[0m██
     \033[0m██    \033[91m▒▒\033[0m██   \033[93m/ __ |/    / /_/ /    /__\033[94m_/\ \/ /|_/ /\ \    \033[0m██\033[91m▒▒    \033[0m██
     \033[0m██      \033[91m▒▒\033[0m██\033[93m/_/ |_/_/|_/\____/_/|_/   \033[94m/___/_/  /_/___/  \033[0m██\033[91m▒▒      \033[0m██
     \033[0m██        \033[91m▒▒\033[0m██                                   \033[91mV1.1 \033[0m██\033[91m▒▒        \033[0m██
     \033[0m██          \033[91m▒▒\033[0m████████████████████████████████████████\033[91m▒▒          \033[0m██                                            
     \033[0m██            \033[91m▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒            \033[0m██
     \033[0m██     \033[94mCoded by: https://github.com/HACK3RY2J                     \033[0m██
     \033[0m██     \033[94mYoutube : https://www.youtube.com/c/PandaHackers           \033[0m██
     \033[0m██   \033[94mInstagram : https://instagram.com/Panda_Hackers_Official     \033[0m██
     \033[0m██                                                                ██
     \033[0m████████████████████████████████████████████████████████████████████
     \033[91m▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
                                         """
    print(logo)
    print("\n")

clr()
banner()

print("This Tool Is Used To Send Anonyous Messages")
Print("Enter The Details Of The Person You Want To Send Anonymous Message")
cc = input("\tEnter Country Code (Without +) : ")
if '+' in cc:
        tc = list(cc)
        tc.remove('+')
        cc = ''.join(tc)
        cc = cc.strip()
if len(cc) >= 4 or len(cc) < 1:
        print('\n\nInvalid Country Code..\n\t\tCountry Codes Are Generally 1-3 digits...\n')
        banner()
        exit()
pn = input("Enter Phone Number(Without Country Code) : ")
if len(pn) <= 6:
        print('\n\nInvalid Phone Number..\n')
        banner()
        exit()
numbe = cc + pn
if not numbe.isdigit():
            print('\n\nPhone Number Must Consist Of Numbers Only\n')
            banner()
            exit()
receiver = '+' + numbe
            
text = input("Enter Message to send : ")

resp = requests.post('https://textbelt.com/text',{
	'phone' : receiver,
	'message' : text ,
	'key' : 'textbelt'
})

print(resp.json())
if '"success" : true ' in resp.text:
    print("\033[92m Message Sent Succesfully \033[0m")
    input('\n\t\tPress Enter To Exit...')
    banner()
    exit()
if '"success" : false ' in resp.text:
    print("\033[91m Error Occured")
    print("\033[91m Failed to send SMS! ")
    input('\n\t\tPress Enter To Exit...')
    banner()
    exit()
