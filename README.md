# C-Dynamic-Library-Build-System
**C99 project demonstrating compilation, linking, and shared libraries**

## Overview

This project is a small C program that demonstrates how code is compiled, linked, and organized using a shared library.

The program is split across multiple source files, compiled into object files, and linked into a shared library (`.so`) that is used by the final executable at runtime.

The goal of the project is to demonstrate how modular C programs are built and how dynamic linking works in practice.

## Features
- Multi-file C program structure
- Compilation into object files
- Creation of a shared library (`libutil.so`)
- Dynamic linking at runtime
- Automated build process using a Makefile

## Tech Stack
Language: C (C99)<br>
Compiler: clang<br>
Build Tools: Make, GNU/Linux toolchain

## Project Structure
a0/<br>
├── src/<br>
│ &emsp;├── main.c<br>
│ &emsp;├── util.c<br>
│ &emsp;└── util.h<br>
├── Makefile<br>
└── README.md<br>

## Installation & Usage

### 1. Clone the repository
```bash
git clone <your-github-repo-url>
cd a0
```

### 2. Build the project
```bash
make
```

### 3. Run the program
```bash
LD_LIBRARY_PATH=./lib ./bin/a0
```

### 4. Clean build files
```bash
make clean
make cleaner
```

### Example Output
```text
Hello from the library: Goodbye!
```

## What I Learned
- How C programs are separated into source and header files
- The compilation process from source files to executables
- How shared libraries (`.so`) work with dynamic linking
- How to write Makefiles for automated builds
- How build artifacts and libraries are organized in C projects

## Challenges & Notes
- Understanding the difference between compiling and linking
- Setting `LD_LIBRARY_PATH` correctly for runtime linking
- Ensuring each build step was properly defined in the Makefile

## Academic Context

This project was completed independently as part of a university-level systems programming course and has been adapted for portfolio purposes.
