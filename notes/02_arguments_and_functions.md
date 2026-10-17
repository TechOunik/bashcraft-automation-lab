# Bash Scripting Note 2

![Bashcraft Automation Lab](assets/bashcraft-userinput.png)

## 1. Getting Input from Arguments
When you run a script you can type words right after the script name. Bash automatically saves these words into numbered variables.

* $1 is the first word you typed after the script name.
* $2 is the second word and so on.
* $@ represents all the words you typed combined.

---

## 2. If and Else Statements
You can use if statements to check if the user provided an argument before asking them to type one. 

Here is the hello script example. It checks if $1 exists. If it has data it uses it. If it is empty it pauses and asks the user for a name.

```#!/bin/bash

if [[ -n $1 ]]; then
    name=$1 
else
    read -p 'Enter your name: ' name
fi

echo "hello $name"```

The [[ -n $1 ]] part is a test. The -n checks if the variable $1 has something inside it (meaning it is not empty).

---

## 3. Functions and Local Variables
Functions group commands together so you can reuse them. Inside a function you can use the word local to create a variable that only exists inside that specific function. 

Functions can also hand back a number when they finish by using the return command.

```greet() {
    local name=$1
    echo "hello $name (from func)"
    return 5
}```

---

## 4. Looping Through All Arguments
You can use a for loop with $@ to grab every single argument a user typed and run code on each one.

You can also run one script from inside another script. In this example we run the hello script for every name provided and we use >> to push all the output into a text file instead of printing it on the screen.

```#!/bin/bash

for name in "$@"; do
    ./hello "$name" >> file.txt
done
```
This loop takes every name provided runs the hello script for each person and saves all the greetings straight into file.txt.
