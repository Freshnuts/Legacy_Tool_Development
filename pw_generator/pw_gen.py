import string
from random import *
import time

#Password Generator Script
def intro():

    print "\n# Created by Freshnuts\n"
    print "###############################"
    print "## Password Generator Script ##"
    print "###############################"
    time.sleep(1)
    print "\nThis script creates a random password which includes"
    print "letters, digits, symbols & punctuations."
    time.sleep(3)

# Create variable with the ascii_letters, punctation, digits
characters = string.ascii_letters + string.punctuation + string.digits

# Password is between 8 to 16 characters

def pwgen():
    global password
    password = ''.join(choice(characters) for x in range(randint(8, 16)))
    print "\n[+] Password Generated Successfully: \n"
    time.sleep(1)
    print password + "\n"

def savepw():
    savePW = raw_input("Would you like to save this password? y or n\n\n#> ")
    if savePW == "y":
        print "\nSaving password in newPW.txt to current working directory."
        open_f = open("newPW.txt", 'w')
        open_f.write(password + "\n")

def main():
    intro()
    pwgen()
    savepw()

main()
