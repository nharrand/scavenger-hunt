### Clue 12: Success! ###

#### You Found All the Clues ####

This is just the start of learning Linux. Explore, google things, break things.
You can also start learning shell scripting (executing multiple commands), or 
even Python programming. Just type

    python3
    
and you'll get an interactive programming environment. You can use `vim` or a
text editor to write your python code, then execute it:

    python3 my_code.py
    
    
#### Bash scripting ####

To create a bash script that automate any tasks you could do in your shell you can do the following
    
    touch my_script.sh
    chmod +x my_script.sh
    
Edit the file with the text editor of your choice (like vim) and copy the following lines

```
    #!/bin/bash
    
    echo "Hello world!"
```

To run the script you can type in your shell:

    ./my_script.sh
    
#### Bonus question

Write a script that explores the `clues` and print files that are real clues (without printing the fake clues).

#### Challenges

Challenge 0.1 is finding the password of the user `ubnt`.
Challenge 0.2 is the script you wrote to find all clues at once.
