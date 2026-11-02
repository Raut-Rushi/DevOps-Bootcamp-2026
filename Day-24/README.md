# Day 24 - Bash Conditional Statements

## Objective
Learn how to make decisions in Bash scripts using conditions.

## Topics Covered
- `if`, `elif`, and `else`
- Numeric test operators
- File checking using `-f`
- Directory checking using `-d`
- Empty string checking using `-z`
- Checking commands using `command -v`

## Practical Tasks
1. Created a file checker script.
2. Checked whether a file exists.
3. Displayed an error when no filename was provided.
4. Checked whether a command is available.

## Example
```bash
if [ -f "app.txt" ]; then
    echo "File exists"
else
    echo "File does not exist"
fi
```

## Learning Outcome
I learned how to use conditions to control the execution of Bash scripts.

## Status
Day 24 completed after practical testing.
