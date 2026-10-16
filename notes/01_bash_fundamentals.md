# Bash Scripting Notes

## 1. What is a Bash Script?
A Bash script is simply a text file filled with Linux commands. If you can type a command in the terminal, you can save it in a script to run automatically later.

---

## 2. Moving Around the Computer
Here are the main commands for exploring your folders and files:

* `pwd:` Shows exactly where you are in the computer.
* `ls:` Lists everything in your current folder.
* `ls -la:` Lists all files, including hidden ones, and shows their permissions.
* `tree -a:` Shows your folders in a nice visual tree shape.
* `cd:` Changes your current folder.
* `touch:` Creates a brand new empty file.
* `mkdir:` Creates a brand new folder.
* `rm:` Deletes a file.
* `rmdir:` Deletes an empty folder.

---

## 3. System Variables
Variables store information. System variables hold details about your computer. You use a dollar sign to read them.

* `$PWD:` Shows your current folder path.
* `$USER:` Shows your logged in username.
* `$SHELL:` Shows the shell program you are using.
* `$HOSTNAME:` Shows the name of your computer.
* `$MACHTYPE:` Shows what kind of system architecture you have.
* `uname:` Prints basic details about your operating system.

---

## 4. Creating Your Own Variables
You can make your own variables to save words or numbers. Make sure you do not put spaces around the equals sign.

```bash
# Setting a variable
me=obioma

# Calling a variable
echo $me

# Deleting a variable from memory
unset me
```

---

## 5. Piping Commands Together
You can use the pipe symbol (|) to connect commands. It takes the output from the first command and passes it directly into the next one.

Example of replacing colons with new lines:
> `echo "$PATH" | tr : '\n'`

Example of combining two commands 
> `echo "$PATH" | tr : '\n' | tr b a`

---


## 6. For Loops
Loops let you run the same code over and over for a list of items.

Example script that prints out words one by one:

```
#!/bin/bash

for thing in man ran can tan han; do
    echo "thing is $thing"
done
```

---

## 7. File Extensions and the Shebang
In Linux file extensions like .sh do not actually matter. You can name your script myscript.sh or just myscript and it will work exactly the same. 

What really matters is the first line of your file called the shebang. It looks like this:
#!/bin/bash

This line tells the computer exactly which program should be used to run the code inside the file.

---

## 8. Making Scripts Executable
When you create a new script file it is just a plain text file. The computer will not let you run it as a program right away for security reasons.

You have to give the file special permission to run. You do this using the chmod command.

To make a file executable you type:
`chmod +x yourfilename`

The +x stands for plus execute. It adds the execution permission to your file.

Once you have done that you can run your script by typing a dot and a forward slash before the name like this:
`./yourfilename`
