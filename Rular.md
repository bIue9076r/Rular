# Rular Documentation

## About:
**Rular is a programing language.** 

what? where you expecting a list of how its better than regular progaming langauges.

## <a name="l1">Usage:</a>

The basics are pretty much the same from lua.

**variable decleration:** 
+ `x = 10`
+ `local y`

**Operations:**
+ `(1*2)+5`
+ `3*(x+8)`

**Functions:**
>```lua
>	function ex()
>		...
>	end
>```

# <a name="l2">Different Commands</a>

this is where it starts to get freaky  
the commands listed in this section are  harder to grasp than the basic commands

## echo

echo is the Rular version of `print()`. it takes the input and converts it to a string if you want to print anything other than a string use the standerd `print()` function.

**Usage**
>```lua
>echo([input])
>```

---

## Commenting

The Comment function isnt really a comment feature as the program doesnt fully ignore the text instead it saves it to a system log so you can comment out explanations and use it as storage.

**Usage**
>```lua
>One line comment
>_("input")
>
>Multiple line comment
>_([[input]])
>```

---

## Command Table and loading Commands 

The Rular language uses a global table to save all functions. To use any thing extra like loops you need to learn how to use the `loadCmd()` command.

**Usage**

you need to first create a function
>```lua
>function example()
>	...
>end
>```

after this you need to call the command table 

>```lua
>function example()
>	...
>end
>
>_cmd.example = example()
>```

Once you have updated the command you need to load it. The way that Rular handels command updates is by loading it before its called

>```lua
>function example()
>	...
>end
>
>_cmd.example = example()
>
>loadCmd(example)
>```

this will set the current command to be excecuted to be what was inputed. this is usefull for loops as this is the only way to change what they run.

---

## Boolean Handeling

Rular handels Booleans in a special way. it uses a unique function to check Booleans.

>```lua
>print(bool(TRUE))
>```

all this does it that it returns the value of the input. theres not much needed to know as you only use these in Rular loops

---

## Loops

this is it the biggest section of them all. they way Loops work in Rular are very confusing, if you understand how they work they become really easy to use.

the easiest loop to grasp is the **is** loop
>```lua
>function example()
>...
>end
>
>_cmd.example = example()
>loadCmd(example)
>is(bool(TRUE))
>```

messy right i wasnt kidding when i said loops where confusing.

moving on to the **dor** loop
>```lua
>function example()
>...
>end
>
>_cmd.example = example()
>loadCmd(example)
>dor(1,10,2)
>```

this loop does the current command for every 2 in 10 and 1.  
1 being the minimum value, 10 being the maximum value, and the 2 being the iteration value

the next loop to learn is the **will** loop

>```lua
>function example()
>...
>end
>
>_cmd.example = example()
>loadCmd(example)
>will(bool(TRUE))
>```

this loop does the current command while the Boolean returns TRUE

and finally the last loop we have to understand is the **unless** loop

>```lua
>function example()
>...
>end
>
>_cmd.example = example()
>loadCmd(example)
>unless(bool(TRUE))
>```

if you understand the loops above this should be a piece of cake but if you dont this loop runs the current command unless the Boolean returns TRUE.

---

if you made it this far you deserve an award here take this
![award](images/award.png)

made by yours truly