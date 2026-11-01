#!/bin/bash

name="$1"
role="$2"

echo "Name: $name"
echo "Role: $role"

#Run : bash greet.sh Rushi "Devops Engineer"
#quote allows arguments to hold spaces between them

#---------------------------------------------------------------------------------------------------------------------------

# To check exit code 
# 0= success
#Non-Zero= Failure

echo "checking command status..."

ls 
echo "Exit code: $?"

ls /this-folder-does-not-exist
echo "Exit code: $?"

#-----------------------------------------------------------------------------------------------------------------------------

#use 'if' to chech success

#!/bin/bash

if ls >/dev/null 2>&1; then
    echo "Command succeeded"
else 
    echo "Command failed"
fi 

echo "$0"

