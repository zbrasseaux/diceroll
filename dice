#!/usr/bin/env python
# Script built to roll some dice
# Version 0.1
# Author : Zachary Brasseaux
# Report bugs to https://github.com/zbrasseaux/diceroll
# (C) 2019
# Last Edited : 10 April, 2019

'''
Error Codes :

	0 : Successful execution
	1 : Invalid argument(s)
	2 : Did not provide a die to roll
	3 : Provided invalid die to roll
	4 : No arguments provided
	5 : Invalid number of dice to roll

'''

# used randint to roll die
# and sys for CLI args
from random import randint
import sys

#############################################

# reusable die class, complete with rolling function
class Die:

	def __init__(self, name, size):
		self.size = size
		self.name = name

	# randomly selects a side of the die
	def roll(self):
		return randint(1, self.size)

	def __str__(self):
		return (self.name + " : a " + self.size + "sided die")

# new instance of each individual die
d2 = Die('d2', 2)
d4 = Die('d4', 4)
d6 = Die('d6', 6)
d8 = Die('d8', 8)
d10 = Die('d10', 10)
d12 = Die('d12', 12)
d20 = Die('d20', 20)

# array for use with find_die fxn
dice = [d2, d4, d6, d8, d10, d12, d20]

#############################################

def find_die(inDie):
	for die in dice:
		if (inDie == die.name):
			return die
	print("Invalid die.")
	exit(3)

# rolls a percent from 1-99
def percentile_roll():
	percent = ((d10.roll()-1)*10 + d10.roll())
	return(str(percent) + "%")

# rolld 4d6 to get stats
def roll_4d6(die):
	for i in range (0,4):
		yield die.roll()

# rolls a DnD 5e Character set of stats
def char_roll():
	# final stats block
	stats = []
	
	# calculates stats
	for i in range (0,6):
		temp = roll_4d6(d6)
		temp = sorted(temp)
		temp = [temp[i] for i in range(1,len(temp))]
		stats.append(sum(temp))

	return(stats)

#############################################

# ascii art for help message
ascii = "  ____\n\
 /\ '.\    _____\n\
/: \___\  / .  /\ \n\
\\' / . / /____/..\ \n\
 \/___/  \\'  '\  / \n\
          \\'__'\/"

# Standard help message, pretty self explanitory
def help():
	print("Welcome to the Dice Machine!")
	print(ascii)
	print()
	print("Usage : dice [OPTION]...[NUMBER]...")
	print("Rolls the dice for you, more info below.")
	print()
	print("Options:")
	print("\t-h, --help\t\tDisplays this message")
	print("\t-c, --character\t\tRolls a DnD 5th Edition character")
	print("\t-p, --percent\t\tRolls a percent from 1% to 100%")
	print("\t-r, --roll [DIE]\tRolls a specified die")
	print()
	print("Die:")
	print("\td2\t\t\tA 2-sided die (aka a coin...)")
	print("\td4\t\t\tA 4-sided die")
	print("\td6\t\t\tA 6-sided die")
	print("\td8\t\t\tA 8-sided die")
	print("\td10\t\t\tA 10-sided die")
	print("\td12\t\t\tA 12-sided die")
	print("\td20\t\t\tA 20-sided die")

#############################################

# The main function, parses through the arguments
# and runs the appropriate functions.
def main():

	# loads main arg in to var arg
	try:
		arg = sys.argv[1]
	except IndexError:
		print("No argument provided, please see 'dice --help' for more options.")
		exit(4)

	# runs basic help fxn
	if (arg == '-h' or arg == '--help'):
		help()
		exit(0)

	# rolls character stats
	elif (arg == '-c' or arg == '--character'):
		print(char_roll())
		exit(0)

	# rolls percent
	elif (arg == '-p' or arg == '--percent'):
		print(percentile_roll())
		exit(0)

	# rolls the input [DIE] for a certain number of times
	# defaults to 1
	elif (arg == '-r' or arg == '--roll'):

		# Checks to make sure a die is given as input
		try:
			print("Rolling " + sys.argv[2])
			die = find_die(sys.argv[2])

			# checks for number of dice option
			try:
				vals = []

				# makes sure the input number is an integer
				try:
					for i in range(0,int(sys.argv[3])):
						vals.append(die.roll())
				except ValueError:
					print("Invalid input '" + sys.argv[3] + "'. Please try again.")
					exit(5)

				print("Rolls : " + str(vals))
				print("Total : " + str(sum(vals)))
			except IndexError:
				print("Total : " + str(die.roll()))
			
			# exits successfully after completion
			exit(0)

		# catches and logs a lack of die input
		except IndexError:
			print("Index error : No die provided.")
			print("Please provide a die to roll.")
			exit(2)

	# base case for an invalid arg
	else:
		print("Invalid argument, please try again or try 'dice --help' for more info.")
		exit(1)

# Runs the main program
main()
