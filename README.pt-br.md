# simpages

[  ] trocar gerador/generator por montador/assembler.
[  ] explicar em templates/README a definição de template e sua função.

Um simples montador de páginas HTML estáticas a partir de arquivos markdown. Ele é útil para uma criação rápida e minimalista de páginas de blogs, ou artigos, hospedados em sistemas de hospedagem estática de sites como o Github Pages, Codeberg Pages, Gitlab Pages, Bitbucket, Gitea e serviços similares.

Essencialmente, o simpage é um conjunto de scripts escritos com diferentes linguagens e objetivos que, trabalhando eles simultaneamente, lêem o conteúdo redigido em markdown pelo usuário e disso montam arquivos HTML, reutilizando arquivos de modelo, isto é, templates.

Neste arquivo, são explicados os scripts envolvidos no funcionamento do simpage, enquanto os arquivos de modelo estão detalhados especificamente no README da pasta "templates". Além disso, aqueles algoritmos daqui em diante serão explicados na ordem que são invocados durante o uso geral do simpage. Atualmente, o projeto engloba quatro programas de diferentes funções: Makeconf, Makefile, Makepage e Makescan. No entanto, eles são executados na seguinte ordem: Makefile, Makescan, Makeconf e Makepage.

O Makefile é o primeiro arquivo invocado durante a execução do projeto e ele possui uma função muito similar à de um arquivo makefile em um projeto de programa escrito em C, no entanto, em vez de trabalhar com compilação de arquivos em C, o makefile do simpage 
