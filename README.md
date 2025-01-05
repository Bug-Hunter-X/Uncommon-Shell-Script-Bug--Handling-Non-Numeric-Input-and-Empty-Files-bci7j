# Shell Script Bug: Robust Largest Number Finder

This repository demonstrates a common yet subtle bug in shell scripts that involves improper handling of non-numeric input and empty files when finding the largest number in a file.  The `bug.sh` script showcases the issue, while `bugSolution.sh` provides a corrected and more robust implementation. 

## The Bug

The original script fails when the input file contains non-numeric values or is empty.  It also lacks error handling for these edge cases. 

## The Solution

The improved script (`bugSolution.sh`) addresses these issues by:

1. **Robust Input Validation:** Explicitly checks if each line is a valid number before comparison.
2. **Empty File Handling:**  Gracefully handles the case where the input file is empty. 
3. **Improved Error Handling:** Provides informative error messages when non-numeric data is encountered.

This example highlights the importance of thorough input validation and error handling in shell scripts to prevent unexpected behavior and ensure script reliability.