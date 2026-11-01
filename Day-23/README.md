# Day 23 - Bash Input, Arguments, Exit Codes & Return Status

## Objective
Learn how to accept user input, pass arguments to scripts, and check command success or failure.

## Topics Covered
- User input using `read`
- Command-line arguments: `$0`, `$1`, `$2`
- Argument count using `$#`
- All arguments using `$@`
- Exit codes using `$?`
- Success and failure using `if`
- Using `exit 0` and `exit 1`

## Practical Tasks
1. Created a script to accept user input.
2. Passed values to a script using arguments.
3. Checked command exit codes.
4. Created a service command availability checker.
5. Practiced handling success and failure.

## Example
```bash
#!/bin/bash
name="$1"
echo "Welcome, $name!"
```

Run:
```bash
bash greet.sh Rushi
```

## Learning Outcome
I learned how to make Bash scripts accept values and check command results.

