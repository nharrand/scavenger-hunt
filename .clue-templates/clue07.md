### Clue 7: Make Me a Sandwhich ###

https://xkcd.com/149/

#### `sudo` ####

Linux has the concept of a `root` user, which is similar to the administrator
user on Windows. This user is sometimes called the super user. If you want to
do something as the super user, but stay logged in as yourself, there is a 
command for that: `sudo`. It stands for "super-user do".

#### Installing Software ####

Sometimes you need a new program. To install software on some versions of Linux
(Ubuntu and Debian), you use the command `apt-get`. On other versions (Fedora,
CentOS) you use the command `yum`. Let's install a text editing program
called `vim`.

    apt-get install vim
    
You should get an error message asking if you are root. This means you don't
have the ability to install software. Instead, try

    sudo apt-get install vim
    
It will ask for a password.

#### Getting the password

The password of your user is the answer of Challenge 0.1 of the course.
It is an easily guessable password found among the list of 60 credentials of the malware Mirai. You can find it online either in a list of bad credentials used in dictionary attacks, or among the source of Mirai. (You can look for a file named `scanner.c`). Another option is to check the Dockerfile I wrote to create the image you are currently using. This can be done by checking DockerHub or GitHub. You can also guess it pretty easily.

Either way, if you find it, you can submit it on iLearn. Or you can continue without sudo.

#### Installing Software 2 ####

Now we have the ability to edit files. Try

    vim README.md
    
from the `scavenger-hunt` directory. Some of the commands for `vim` are a little
strange. For now, just type `:q!` to quit.


#### Finding Clue 8 ####

The hint is the word contained in  `/root/secret`.

#### Help. I can't sudo ####

Depending on the system you are using, you may not have permission to use `sudo`.
In this case you can use the hint `denied`.

