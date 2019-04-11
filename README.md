# diceroll
#### Script built to roll some dice

##### Version 0.1
##### Author : Zachary Brasseaux
##### Report bugs to https://github.com/zbrasseaux/diceroll
##### (C) 2019
##### Last Edited : 10 April, 2019

Welcome to the Dice Machine!

Usage : `dice [OPTION]...[NUMBER]...`
Rolls the dice for you, more info below.

Options:
-	-h, --help		Displays this message
-	-c, --character		Rolls a DnD 5th Edition character
-	-p, --percent		Rolls a percent from 1% to 100%
-	-r, --roll [DIE]	Rolls a specified die

Die:
-	d2			A 2-sided die (aka a coin...)
-	d4			A 4-sided die
-	d6			A 6-sided die
-	d8			A 8-sided die
-	d10			A 10-sided die
-	d12			A 12-sided die
-	d20			A 20-sided die


Error Codes :
-	0 : Successful execution
-	1 : Invalid argument(s)
-	2 : Did not provide a die to roll
-	3 : Provided invalid die to roll
-	4 : No arguments provided
-	5 : Invalid number of dice to roll

Setup :
-	run setup.sh with `bash setup.sh` or `./setup.sh`
-	additionally, you can run `sudo cp ./dice.py /usr/bin/dice`. I only included the `setup.sh` file because some people are lazy.
