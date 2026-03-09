#!/usr/bin/env bash

# ==========================================
# 1. ( ) - SUBSHELLS & ARRAYS
# Spacing inside: NOT required.
# ==========================================

# Array definition (creating a list of items):
fruits=("apple" "banana" "cherry")
echo "My favorite fruit is ${fruits[1]}" # Prints banana

# Subshell (runs commands in a temporary, isolated background process):
# Even though we 'cd' into /tmp, the main script stays in the original folder!
( cd /tmp && touch temporary_file.txt )


# ==========================================
# 2. (( )) - MATH MODE & C-STYLE LOOPS
# Spacing inside: NOT required.
# Bonus: You don't need the '$' sign for variables inside!
# ==========================================

number=10
# Doing math and logical comparisons:
if (( number > 5 && number < 20 )); then
  (( result = number * 2 ))
  echo "The math result is: $result"
fi

# C-style loop:
for (( i=1; i<=3; i++ )); do
  echo "Math loop count: $i"
done


# ==========================================
# 3. [ ] - POSIX TEST (The old-school condition)
# Spacing inside: STRICTLY REQUIRED after '[' and before ']'.
# ==========================================

filename="data.txt"
# Notice the mandatory spaces inside the brackets:
if [ ! -f "$filename" ]; then
  echo "The old-school test says: File is missing!"
fi


# ==========================================
# 4. [[ ]] - MODERN BASH TEST (The recommended condition)
# Spacing inside: STRICTLY REQUIRED!
# Bonus: Handles empty variables safely and supports Regex.
# ==========================================

input="yes"
# You can use standard && and || directly inside double brackets:
if [[ "$input" == "yes" && -n "$input" ]]; then
  echo "The modern test says: Input is valid."
fi

# Regex matching (checking if a string contains ONLY numbers):
age="25"
if [[ "$age" =~ ^[0-9]+$ ]]; then
  echo "The regex test says: That is a valid number!"
fi


# ==========================================
# 5. { } - BRACE EXPANSION & CODE BLOCKS
# Spacing inside: DEPENDS ON THE USE CASE.
# ==========================================

# Use Case A: Brace Expansion (NO SPACES ALLOWED)
# Generates a sequence on the fly:
echo "Creating files:" {1..3}.txt
# Outputs: Creating files: 1.txt 2.txt 3.txt

# Use Case B: Code Block (STRICT SPACING REQUIRED)
# Groups commands in the current shell.
# MUST have a space after '{' and end with a ';' before '}'
[[ -f "critical.txt" ]] || { echo "Code block says: File missing!"; exit 1; }