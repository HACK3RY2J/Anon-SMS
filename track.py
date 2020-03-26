import os
import sys
import time

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

def Track() :
  TXTID = input("Enter Text ID of Anon-SMS \n\t -->>")
  os.system(f"curl https://textbelt.com/status/{TXTID}")
  input("Press Enter To Exit..")
  print("\nThanks For Using Anon-Sms..")
  print("\tWe Hope To See You Again")
  exit()


clr()
banner()

print("This Tool Is Used To Send Anonyous Messages")
print("Track The Anonymous Message You Sent Using This Tool.")
print()
Track()


