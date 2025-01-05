# Objective-C ARC Memory Leak Bug

This repository demonstrates a common subtle bug in Objective-C related to Automatic Reference Counting (ARC) and memory management. Specifically, it focuses on a memory leak that can occur when dealing with strong properties and string objects.

## The Bug
The bug lies in the improper handling of string assignment within the `MyClass` class. The solution outlines how to correct the issue.

## How to Reproduce
1. Clone this repository.
2. Open the project in Xcode.
3. Run the application.
4. Observe the memory usage (using Instruments, for example).  A memory leak will be apparent in the original `bug.m` file but will not be present in the `bugSolution.m` file.

## Solution
The solution involves understanding how ARC manages object ownership and modifying the string assignment to correctly release the old string before assigning a new one.