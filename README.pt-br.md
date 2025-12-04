# simpages

## O que é?

Um simples montador de páginas HTML estáticas a partir de arquivos markdown. Ele é útil para uma criação rápida e minimalista de páginas de blogs, ou artigos, hospedados em sistemas de hospedagem estática de sites como o Github Pages, Codeberg Pages, Gitlab Pages, Bitbucket, Gitea e serviços similares. Essencialmente, o simpage é um conjunto de scripts escritos com diferentes linguagens e objetivos que, trabalhando eles simultaneamente, lêem o conteúdo em markdown redigido pelo usuário e disso montam arquivos HTML, reutilizando arquivos de modelo, isto é, templates.

## Introdução

Neste arquivo, são explicados os scripts envolvidos no funcionamento do simpage, enquanto os arquivos de modelo estão detalhados especificamente no README da pasta "templates". Atualmente, o projeto engloba quatro programas de diferentes funções: Makeconf, Makefile, Makepage e Makescan. No entanto, os executados diretamente pelo usuário são estes: Makefile e Makeconf.

## Makefile

Normalmente, o Makefile é o primeiro arquivo interpretado durante a execução do projeto e ele possui uma função muito similar à de um arquivo makefile em um projeto de programa escrito em C, no entanto, em vez de automatizar a compilação de arquivos c, o Makefile do simpage automatiza a montagem de páginas HTML feita a partir de arquivos markdown pertencentes à estrutura de diretórios do projeto. Ou seja, no Makefile ficam registrados quais arquivos markdown internos ao diretório do simpage devem ser lidos e quais templates devem ser usados para montá-los. Porém, o Makefile é incapaz de descobrir sozinho onde está cada artigo markdown a ser lido. Por isso, um script precisa ser acionado pelo usuário para percorrer recursivamente o diretório do simpage em busca de arquivos markdown e para registrá-los no arquivo Makefile configurados de acordo com as preferências do usuário: o script responsável por isso é o Makeconf.

## Makeconf

Após ser manualmente acionado e encontrar um markdown desconhecido dentro do projeto, o Makeconf, um script shell, pergunta ao usuário se quer incluí-lo no Makefile e, se o usuário quiser, o script iniciará uma configuração guiada que deverá ser preenchida pelo usuário. Com o término da configuração guiada, o Makeconf registrará no Makefile o path do novo arquivo markdown encontrado e a configuração com a qual o HTML resultante dele deve ser montado futuramente. Em seguida, o script continuará sua varredura de diretórios em busca de arquivos markdown, repetindo o ciclo até não encontrar mais documentos markdown.
