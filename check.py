import sys
str = sys.argv[1]
# str = input("Type a string")
sum = 0
for character in str:
    if (ord(character) >= 65 and ord(character) <= 69) or (ord(character) >= 97 and ord(character) <= 101):
        sum = sum + 1
    elif (ord(character) >= 70 and ord(character) <= 74) or (ord(character) >= 102 and ord(character) <= 106):
        sum = sum + 2
    elif (ord(character) >= 75 and ord(character) <= 79) or (ord(character) >= 107 and ord(character) <= 111):
        sum = sum + 3
    elif (ord(character) >= 80 and ord(character) <= 84) or (ord(character) >= 112 and ord(character) <= 116):
        sum = sum + 4
    elif (ord(character) >= 85 and ord(character) <= 89) or (ord(character) >= 117 and ord(character) <= 121):
        sum = sum + 5
    elif ord(character) == 90 or ord(character) == 122:
        sum = sum + 6

print(sum)
