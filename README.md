[pt-BR](./README.pt-br.md)

# simpages

## What is it?

A simple tool for assembling static HTML pages from markdown files. It's useful for quickly and minimally creating blog pages or articles hosted on static website hosting systems like Github Pages, Codeberg Pages, Gitlab Pages, Bitbucket, Gitea, and similar services. Essentially, simpages is a set of scripts written in different languages ​​and with different objectives that, working simultaneously, read the markdown content written by the user and assemble HTML files from it, reusing template files.

## Introduction

This file explains the scripts involved in the operation of simpages, while the template files are detailed specifically in the README of the "templates" folder. Currently, the project includes four programs with different functions: Makeconf, Makefile, Makepage, and Makescan. However, the ones executed directly by the user are: Makefile and Makeconf.

## Makefile

Usage: `$ Make` or `$ Make path/to/markdown/index.md/file`

Normally, the Makefile is the first file interpreted during project execution and has a function very similar to that of a Makefile in a C program project. However, instead of automating the compilation of C files, the simpages Makefile automates the assembly of HTML pages made from Markdown files belonging to the project's directory structure. That is, the Makefile records which `index.md` files inside the simpages directory should be read and which templates should be used to assemble them. However, the Makefile is unable to discover on its own where each Markdown file to be read is located. Therefore, a script needs to be run by the user to recursively traverse the simpages directory in search of Markdown files and to register them in the Makefile configured according to the user's preferences: the script responsible for this is Makeconf.

## Makeconf

Usage: `$ ./Makeconf`

After being manually triggered and finding an unknown `index.md` markdown file within the project, Makeconf, a shell script, asks the user if they want to include it in the Makefile. If the user agrees, the script will start a guided configuration that the user must complete. Upon completion of the guided configuration, Makeconf will register the path of the newly found markdown file and the configuration with which the resulting HTML should be assembled in the future in the Makefile. Then, the script will continue its directory scan searching for markdown files, repeating the cycle until it finds no more markdown documents.

## What is index.md?

`index.md` is the name of the markdown file recognized by the simpages scripts as a target for the assembly process. Therefore, markdown files with names other than `index.md`, such as README.md, are ignored. Furthermore, it is recommended to store only one `index.md` file within each directory of websites built with simpages, to avoid conflicts or unpredictable behavior.
