# C-Dynamic-Library-Build-System
**C99 program demonstrating compilation, linking, and shared libraries**

## Overview

This project is a small C program that demonstrates how source code is compiled, organized, and linked using a shared (dynamic) library.

The program separates functionality across multiple files, compiles them into object files, builds a shared library (.so), and links it dynamically to produce an executable. When run, the executable calls a function from the shared library to print a message.

This project highlights how real-world C applications manage modular code and external libraries.

## Features
Multi-file C program (main.c, util.c, util.h)
Compilation into object files
Creation of a shared library (libutil.so)
Dynamic linking at runtime
Fully automated build using a Makefile

## Tech Stack
Language: C (C99 standard)
Compiler: clang
Tools: Make, GNU/Linux toolchain

## Project Structure
a0/

├── src/

│   ├── main.c

│   ├── util.c

│   └── util.h

├── Makefile

└── README.md

## Installation & Usage
### 1. Clone the repository
git clone <your-github-repo-url>
cd a0
## 2. Build the project
make
## 3. Run the program
LD_LIBRARY_PATH=./lib ./bin/a0
##4 . Clean build files
make clean      # removes object files
make cleaner    # removes all generated files
## Example Output
Hello from the library: Goodbye!
## What I Learned
How C programs are split into translation units (.c and .h)
The full compilation pipeline: source → object files → shared library → executable
How dynamic linking works using .so libraries
Writing explicit Makefile rules without pattern matching
Managing build artifacts and keeping repositories clean
## Challenges & Notes
Understanding the difference between compiling and linking required careful attention
Setting LD_LIBRARY_PATH correctly was necessary for the executable to find the shared library
Ensuring all build steps were explicitly defined in the Makefile (no shortcuts allowed)
## Academic Context

This project was completed as part of a university data structures and systems programming course. It has been adapted and documented for portfolio purposes.

## Disclosure

I completed this assignment entirely on my own.
