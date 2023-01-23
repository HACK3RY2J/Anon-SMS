import re
import requests

phone = None
phone_is_valid = False

while not phone_is_valid:
    phone = input('type here recevier\'s phone number (E.164 format)\n> ').replace(' ', '')
    phone_is_valid = bool(re.match(r'\+[0-9]{1,3}[1-9][0-9]{6,9}', phone))
    if not phone_is_valid:
        print("This phone number is incorrect.")

message = input('type message here\n> ')

resp = requests.post('https://textbelt.com/text',{
    'phone': phone,
    'message': message,
    'key': 'textbelt'
})

print(resp.json())
