![award](images/rular.png)
# Rular Documentation

## About:
**Rular is a programing language.** 

what? where you expecting a list of how its better than regular progaming langauges.

---

## Table of contents

[Usage](#l1)

[Custom Commands](#l2)

+ [echo](#il1)
+ [Commenting](#il2)
+ [Loading commands](#il3)
+ [Booleans](#il4)
+ [Loops](#il5)


## <a name="l1">Usage:</a>

The basics are pretty much the same from lua.

**variable declaration:** 
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
the commands listed in this section are harder to grasp than the basic commands

## <a name="il1">echo</a>

echo is the Rular version of `print()`. it takes the input and converts it to a string if you want to print anything other than a string use the standard `print()` function.

**Usage**
>```lua
>echo([input])
>```

---

## <a name="il2"> Commenting</a>


**Usage**
>```lua
>One line comment
>_("input")
>
>Multiple line comment
>_([[input]])
>```

---

## <a name="il4">Boolean Handling</a>

Rular handles Booleans in a special way. it uses a unique function to check Booleans.

>```lua
>print(bool(TRUE))
>```

all this does it that it returns the value of the input. theres not much needed to know as you only use these in Rular loops

---

## <a name="il5">Loops</a>

this is it the biggest section of them all. if you understand how loops work they become really easy to use.

the easiest loop to grasp is the **is** loop
>```lua
>function example(...)
>...
>end
>
>is(bool(TRUE),example,...)
>```

#### Not variant

>```lua
>function example(...)
>...
>end
>
>isnot(bool(FALSE),example,...)
>```

opposite of the regular is loop

moving on to the **dofor** loop
>```lua
>function example(...)
>...
>end
>
>dofor(1,10,2,example,...)
>```

this loop does the current command for every 2 in 10 and 1.  
1 being the minimum value, 10 being the maximum value, and the 2 being the iteration value

the next loop to learn is the **will** loop

>```lua
>function example(...)
>...
>end
>
>will(bool(TRUE),example,...)
>```

this loop does the current command while the Boolean returns TRUE

#### Not variant

>```lua
>function example(...)
>...
>end
>
>willnot(bool(FALSE),example,...)
>```

dont get to confused by the name its just the opposite of a will loop

and finally the last loop we have to understand is the **unless** loop

>```lua
>function example(...)
>...
>end
>
>unless(bool(TRUE),example,...)
>```

#### Not variant

>```lua
>function example(...)
>...
>end
>
>unlessnot(bool(TRUE),example,...)
>```

same thing as before the names are just the opposite of their regular names.

if you understand the loops above this should be a piece of cake but if you dont this loop runs the current command unless the Boolean returns TRUE.

---

if you made it this far you deserve an award here take this
![award](images/award.png)

made by yours truly
