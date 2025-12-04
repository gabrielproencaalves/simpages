[pt-BR](./README.pt-br.md)

# simpages

## What is it?

A simple tool for assembling static HTML pages from markdown files. It's useful for quickly and minimally creating blog pages or articles hosted on static website hosting systems like Github Pages, Codeberg Pages, Gitlab Pages, Bitbucket, Gitea, and similar services. Essentially, simpages is a set of scripts written in different languages ​​and with different objectives that, working simultaneously, read the markdown content written by the user and assemble HTML files from it, reusing template files.

## Introduction

This file explains the scripts involved in the operation of simpages, while the template files are detailed specifically in the README of the "templates" folder. Currently, the project includes four programs with different functions: Makeconf, Makefile, Makepage, and Makescan. However, the ones executed directly by the user are: Makefile and Makeconf.

## Makefile

Normally, the Makefile is the first file interpreted during project execution, and it has a function very similar to that of a Makefile in a C program project. However, instead of automating the compilation of C files, the simpages Makefile automates the assembly of HTML pages made from Markdown files belonging to the project's directory structure. In other words, the Makefile records which Markdown files within the simpages directory should be read and which templates should be used to assemble them. However, the Makefile is unable to automatically discover the location of each Markdown file to be read. Therefore, a script needs to be run by the user to recursively traverse the simpages directory in search of Markdown files and register them in the Makefile configured according to the user's preferences: the script responsible for this is Makeconf.

## Makeconf

After being manually triggered and finding an unknown markdown file within the project, Makeconf, a shell script, asks the user if they want to include it in the Makefile. If the user agrees, the script will start a guided configuration that the user must complete. Upon completion of the guided configuration, Makeconf will register the path of the newly found markdown file and the configuration with which the resulting HTML should be assembled in the future in the Makefile. Then, the script will continue its directory scan searching for markdown files, repeating the cycle until it finds no more markdown documents.
