# Explicação do diretório de templates

Este diretório detém as partes estruturais básicas de conteúdo envolvidas na
montagem das páginas HTML geradas pelo simpage. Essas partes são separadas em
arquivos que, durante a geração das páginas, são lidos e seu conteúdo é
inserido na página final, completando sua estrutura. Além disso, esses arquivos
são: head.html, header.md, footer.md e nav.html. Lembre-se: você tem total
liberdade de modificá-los para adequá-los às tuas necessidades, inclusive os
scripts podem ser modificados, embora isso possa quebrar o projeto se
não for feito adequadamente. Adiante, estão explicações acerca da composição e
finalidade de cada arquivo neste diretório.

## header.md

Sendo, por padrão, o primeiro template a ser lido pelo script Makepage, o
arquivo header.md armazena as definições iniciais básicas utilizadas pelo
lowdown para gerar, do arquivo markdown, o documento HTML. Antes do lowdown ser
invocado, o conteúdo desse arquivo é concatenado no início do artigo escrito em
markdown usuário. O conteúdo do header.md, por padrão, é

```
1 author: Your name, the creator and maintainer of website pages
2 lang: en-US
3 css: /styles/simple.css  /styles/giscus.css  /styles/table.css  /styles/images.css
```

Na linha 1, o texto inserido após `author: ` até ao final da linha será tratado
pelo lowdown como o nome do autor do texto a ser processado.

Na linha 2, a string escrita após `lang: ` até ao final da linha definirá para
o lowdown em que língua o texto do usuário foi predominantemente escrito.

Na linha 3, os paths separados por dois espaços e postos entre `css: ` e o
final da linha indicam quais arquivos de estilo CSS devem ser ligados ao HTML
final gerado pelo lowdown.

Outrossim, mais definições podem ser adicionadas neste arquivo para ajustar o
comportamento do lowdown, as quais são detalhadas na manpage do lowdown.

## footer.md

O arquivo footer.md é o segundo template a ser lido pelo script Makepage e
possui duas funções: a de armazenar o conteúdo a ser exibido no rodapé da
página final HTML e a de delimitar o fim do artigo principal, o início e o fim
da seção de comentários e início e o fim do próprio rodapé. Seu conteúdo padrão
é

```
1  ;;;EndMainContent
2
3  ;;;CommentsArea
4
5  ;;;StartFooter
6
7  ---
8
9  Copyright 0-2025 Foo Bar Baz -- All rights reserved
10 
11 Email: `youremail@address.ifyouwant`
12
13 ---
14
15 ;;;EndFooter
```

Na linha 1, o token `;;;EndMainContent` delimita, para o script Makepage, o fim
do artigo principal.

Na linha 3, o token `;;;CommentsArea` indica, para o Makepage, a localização da
seção de comentários no documento.

Na linha 5, o token `;;;StartFooter`
delimita, para o Makepage o início do rodapé.

Na linha 7, os três sinais consecutivos de subtração indicam ao lowdown que ali
deverá haver uma linha horizontal separadora no documento final.

Na linha 9, há um exemplo falso de Copyright.

Na linha 11, há um exemplo de email falso.

Na linha 13, repete-se o conteúdo da linha 7.

Na linha 15, o token `;;;EndFooter` delimita, para o Makepage, o fim do rodapé.

## head.html

Por padrão, o arquivo head.html é o terceiro template lido pelo script Makepage
após a construção inicial da página HTML e ele armazena as configurações que serão inseridas no head do HTML final. Desse modo, seu conteúdo é

```
1 <link rel="icon" type="image/x-icon" href="/absolute/path/to/website/icon.ico">
2 <!-- Insert here the giscus configuration
3 tag for your page if you want -->
4 </head>
```

Na linha 1, a tag link aponta inicialmente a um ícone inexistente para o site.
Por isso, ela deve ser reconfigurada para indicar um path absoluto e verdadeiro
de um ícone que represente o site.

Nas linhas 2 e 3, há um comentário em HTML sugerindo a inserção de uma
configuração personalizada do [giscus](https://giscus.app).

Na linha 4, tem-se a tag de fechamento do head para repor o `</head>` removido
da página HTML final durante a inserção do conteúdo de head.html pelo script
Makepage.

## nav.html

Lido posteriormente aos arquivos acima, o nav.html retém essencialmente os
links de navegação no site que serão postos no topo das páginas HTML geradas.
Seu conteúdo padrão é

```
1 <body>
2 <nav><!-- nav -->
3 <a href=""><===</a><!-- nav arrow -->
4 <a href="..">(BACK)</a><!-- nav back -->
5 <a href="">===></a><!-- nav arrow -->
6 </nav><!-- nav endtag -->
7 <hr/>
8 ;;;StartMainContent
9 ;;;InfoLastModified
```

Na linha 1, está a tag de abertura do body para repor a removida da página HTML
final durante a inserção do conteúdo de nav.html pelo script Makepage.

Na linha 2, está a tag de abertura do bloco de navegação.

Na linha 3, está um link legendado com uma seta direcionada para a esquerda e o link, por estar desconfigurado, não aponta para lugar algum.

Na linha 4, há um link exibido como "(BACK)" e ele aponta para o diretório pai.

Na linha 5, de modo similar à linha 3, há um link de seta para a direita e ele não possui destino definido.

Na linha 6, está a tag de fechamento do bloco de navegação.

Na linha 7, há uma tag de linha horizontal.

Na linha 8, está o token ";;;StartMainContent", o qual delimita o início do conteúdo principal da página.

Na linha 9, está o token ";;;InfoLastModified", o qual será sobrescrito pela data e pela hora de última modificação da página.
