---------------------------------------------------------------------------------------------------------------------------------
* What is user?
--> 
-user is person or account that can access a linux system
- user can have a permissions to read write or execute files.
---------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------
* What is Group?
--> 
- Group is collection of users.
-Example:
-Devlopers- Rushi,Ravi,Rahul

- Instead of giving permissions separately we can give the permissions to the etire group.

> simple: is a collection of users with common permissions.
---------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------
* what is file ownership?
--> 
- Every file and directory in linux has:
> owner/ user 
> group
- check with:
     > ls -l
Example: -rw-r--r-- 1 rushi developers 100 script.sh
        here: 
        Rushi > owner,
        developers > group.

> file ownership tells us which user and group own a file.
---------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------
4. What are r, w, x ?
-->
these are the three basic linux permissions.
1. r= read (list/read directory contents)
2. w= write (create/delete/modify entries)
3. x= execute/ run (For directory x has different meaning means travers or enter)

- Example: -rwxr-xr--
---------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------
5. What is chmod?
-->
- chmod means Change Mode.

- It is used to change permissions of files and directories.

- Example:

> chmod 755 script.sh

or:

> chmod +x script.sh

Simple:

-> chmod = Change file or directory permissions.---------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------
6. What is chown?
-->
- chown means Change Owner.

- It changes the owner of a file.

- Example:

> chown rushi file.txt

---------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------
7. What is chgrp?
-->
- chgrp means Change Group.

- It changes the group associated with a file.

- Example:

- chgrp developers file.txt

Simple:

- chgrp = Change the group of a file.
---------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------
8. Numeric Permissions — 755, 644, 600
-->
- Linux uses numbers to represent permissions.
| Permission    | Number |
| ------------- | -----: |
| `r`           |      4 |
| `w`           |      2 |
| `x`           |      1 |
| No permission |      0 |

755
│││
││└── Others (4+0+1) = 5 = r-x
│└─── Group  (4+0+1) = 5 = r-x
└──── Owner  (4+2+1) = 7 = rwx
- so:
755 = rwxr-xr-x
Meaning: Owner can read/write/execute; group and others can read/execute.

- 600 = rw-------
- meaning:
Owner  → rw-
Group  → ---
Others → ---
- so:
rw------- (Only the owner can read/write. ~Useful for private/sensitive files.)

---------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------
9. Why do permissions matter in production?
-->
- Permissions help protect servers and applications.

- For example, imagine a production server containing:

- database-password.txt

- You don't want every user on the server to read it.

- You could use:

> chmod 600 database-password.txt

- Now only the owner can read/write it.

* Permissions help prevent:

🔒 Unauthorized access
🗑️ Accidental file deletion/modification
🔓 Exposure of sensitive information
⚠️ Security problems

Simple:

Permissions protect production files, applications, and sensitive data from unauthorized access.
---------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------
10. How to troubleshoot Permission denied?
-->
step 1:
- check permissions by using 
>  ls -l filename  
if, rw------- showing that means only owner has ACCESS of this file.

step 2:
- Check if you need execute permission
for a script: 
>chmod +x script.sh
then: 
> ./script.sh
- also check for directory, directory needs x permission to enter/traverse it.

step 3:
- Check ownership

If the wrong user owns the file:

> sudo chown rushi file.txt

* simple troubleshooting flow:

Permission denied
       ↓
ls -l
       ↓
Check r/w/x
       ↓
Check owner/group
       ↓
Fix with chmod/chown/chgrp
       ↓
Try again
---------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------
11. Shell Script & Execute Permission
-->
- We also practiced a basic shell script in Day 04.

- A shell script can start with:

- (#!/bin/bash)

- This is called a 'shebang'.

Example:

(#!/bin/bash
echo "Hello Rushi")

- Save it as:

- script.sh

 - Run it with:

- bash script.sh

To execute it directly:

>     chmod +x script.sh
>     ./script.sh

Simple:

- chmod +x gives a script execute permission.
---------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------
