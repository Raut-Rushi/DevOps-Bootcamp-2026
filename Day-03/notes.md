---------------Day-03--------------

#Part 01:
- Files and Directories:

1) Directory -> Folder 
* How to create Directory:
> mkdir project

2) Files -> Data
* How to create files:
> touch app.log

#part 02:
- Read a file:

* create a file:
> touch readfile.txt

* put some text inside it: (>) helps to overwrite
> echo "Devops day 03" > readfile.txt

* add more text in this file: (>>) helps to append
> echo "Linux is important for DevOps: >> readfile.txt

- Now read it,

> cat readfile.txt

- cat is used to display the content of file in terminal

* This is very important when working with logs and configuration files


#Part 03:
- copy files:
* example:
> touch readfile.txt
- copy to->
> cp readfile.txt backupRF.txt
* all contents from readfile.txt has been copied to backupRF.txt

#part 04:
- move file:
* example:

> mv app.log Project/

> ls Project     -->  (app.log)

# Part 05:
- Rename files:

* 'mv' is not just for move it also helps to rename the file instead of moving->
-example:
> touch name1.log

>mv name1.log name2.log

- here original name1.log changed by new name with name2.log

# Part 06:
- Delete Files:

> rm filename.txt

--> REMEMBER: linux normally doesn't give you windows like recycle bin  when using 'rm'
              so, 'rm' can permanently remove it. Be careful while using

- * Delete empty directory:
> rmdir foldername
This only works when directory is empty

- * Delete Directory+Content:
> rm -r foldername
-r means recursive

--> Be extremely careful with it
-> understanding the dangerous commands is a part of becoming a good DevOps engineer :)

# Part 07:
-less

suppose a server logs contains 100,000 lines
you dont want:
> cat huge.log
Beacause it dumps everything on the terminal.
Instead,
> less huge.log
You can scroll through the file 
- Space --> next page,
- B     --> previous page,
- Q     --> Quit

# Part 08:
- Head

show the beginning of a file:
> head notes.text

* show first 5 line
> head -n 5 notes.text

# Part 09:
- Tail 

show the end:
> tail notes.txt

this is extremely important for DevOps.

Imagine an application is running on a server and producing :
-> application.log
You want see newest log entries

> tail application.log

* Real Devops command 
> tail -f application.log

(-f) means follows 
it keeps watching the file as new lines are added 

# Part 10:
((- Wildcard ))
suppose You have 
- app.log
- server.log 
- database.log 
- notes.text
- image.png

You want all .log files 

> ls *.log

The *means "Anything"

example:
> rm *.log
This deletes all .log files in current directory,
So always check first:
>ls *.log
then delete if u'r sure












