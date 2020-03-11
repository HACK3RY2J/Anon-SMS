#!/usr/bin/env python
import os
import time
import sys
import random

try:
    import requests
except ImportError:
    print('Error !! : Some dependencies are not installed')
    print('Type \'pip install -r requirements.txt\' to install all required packages')
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
# If You Wanna Take Credits, Please Look Yourself Again!!

def banner():
    clr()
    logo = """                                                  
     \033[93m   _____ __  ________  \033[0m    _____ _________    __  ___
     \033[93m  / ___//  |/  / ___/  \033[0m   / ___// ____/   |  /  |/  /
     \033[93m  \__ \/ /|_/ /\__ \___\033[0m___\__ \/ /   / /| | / /|_/ / 
     \033[93m ___/ / /  / /___/ /___\033[0m__/__/ / /___/ ___ |/ /  / /  
     \033[93m/____/_/  /_//____/    \033[0m /____/\____/_/  |_/_/  /_/   
     \033[1m                                             v1.0  
                                         """
    print(random.choice(colors) + logo + W)
    print("\n")

os.system("clear")
print("\033[93m   _____ __  ________  \033[0m    _____ _________    __  ___")
print("\033[93m  / ___//  |/  / ___/  \033[0m   / ___// ____/   |  /  |/  /")
print("\033[93m  \__ \/ /|_/ /\__ \___\033[0m___\__ \/ /   / /| | / /|_/ / ")
print("\033[93m ___/ / /  / /___/ /___\033[0m__/__/ / /___/ ___ |/ /  / /  ")
print("\033[93m/____/_/  /_//____/    \033[0m /____/\____/_/  |_/_/  /_/   ")
print("\033[1m                                             v1.0  ")
print()
print("██████████████████████████████████████████████████████████████")
print("██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██")
print("██   Coded by:\033[96m github.com/HACK3RY2J                         \033[0m██")
print("██   Youtube :\033[96m https://www.youtube.com/c/PandaHackers       \033[0m██")
print("██ Instagram :\033[96m https://instagram.com/Panda_Hackers_Official \033[0m██")
print("██████████████████████████████████████████████████████████████")
print("▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒")
print()

cc = input("\tEnter Your Country Code (Without +) : ")
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
victim = '+' + numbe
            
msg = input("Enter Message to send : ")

resp = requests.post('https://textbelt.com/text',{
	'phone' : victim,
	'message' : msg ,
	'key' : 'textbelt'
})

print(resp.json())
if '"success" : true ' in resp.text :
	print("\033[92m Message Sent Succesfully \033[0m")
  input('\n\t\tPress Enter To Exit...')
  banner()
  exit()
if '"success" : false ' in resp.text :
  print("\033[91m Error Occured")
	print("\033[91m Failed to send SMS! ")
  input('\n\t\tPress Enter To Exit...')
  banner()
  exit()
  
