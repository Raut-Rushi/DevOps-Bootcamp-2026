# Day 22 - Bash Scripting Notes

## 1. What is Bash scripting?
Bash scripting means writing multiple commands in a file to execute them together.

## 2. Shebang
`#!/bin/bash` specifies the Bash interpreter used to run the script.

## 3. Comments
Comments start with `#`. They explain the code and are not executed as commands.

## 4. echo
The `echo` command prints text to the terminal.

Example:
```bash
echo "Welcome to DevOps"
```

## 5. Variables
Variables store values for later use.

Example:
```bash
name="Rushi"
echo "$name"
```

**Important:** Do not put spaces around `=` when assigning a Bash variable.

## 6. Useful Commands
- `date` - Displays the current date and time.
- `whoami` - Displays the current username.
- `bash hello.sh` - Runs a script using Bash.
- `chmod +x hello.sh` - Makes a script executable in Linux-compatible environments.

## Key Learning
Bash scripts help DevOps engineers automate repetitive tasks.
