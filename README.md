<!-- UFC figure pixel -->
<div align="center">
    <img class="aligncenter" src="libs/ufcpixel.png" width="220px" height="220px"/>
</div>

<br/>

<!-- Title -->
<div align="center">
    <h1><b>Template Beamer UFC</b></h1>
</div>

<!-- Badges -->
[![made-with-latex](https://img.shields.io/badge/Made%20with-LaTeX-1f425f.svg)](https://www.latex-project.org/)
![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/maumneto/TemplateBeamerUFC)[![GitHub issues](https://img.shields.io/github/issues/maumneto/TemplateBeamerUFC)](https://github.com/maumneto/TemplateBeamerUFC/issues)[![GitHub stars](https://img.shields.io/github/stars/maumneto/TemplateBeamerUFC)](https://github.com/maumneto/TemplateBeamerUFC/stargazers)[![GitHub forks](https://img.shields.io/github/forks/maumneto/TemplateBeamerUFC)](https://github.com/maumneto/TemplateBeamerUFC/network)[![Open Source? Yes!](https://badgen.net/badge/Open%20Source%20%3F/Yes%21/blue?icon=github)](https://github.com/maumneto/TemplateBeamerUFC)[![Overleaf badge](https://img.shields.io/badge/Is_in_Oveleaf_Repository%3F-Yes!-<COLOR>.svg)](https://shields.io/)


<!-- Table of Contents -->
<p align="center">
    <a href="#what is it?">What is it?</a> •
    <a href="#for whom?">For Whom?</a> •
    <a href="#tips">Tips</a> •
    <a href="#changelog">Changelog</a> •
    <a href="#author">Author</a>
</p>

<!-- Sections -->
## What is it?

This project aims to create a template for presentation for the Universidad Nacional de Colombia. It was created a class called **ufc_format.cls** with a set of environments and commands related to the document. This template is not an official document from the Universidad Nacional de Colombia. However, this template can be used to create classes, presentations, short courses, etc.

## For Whom?

This template can be useful for the Universidad Nacional de Colombia UNAL professors and students.

- <b>Professors:</b> for creating classes and presentations
  
- <b>Students:</b> for assignments and presentations

## Tips

Some tips for using this template

### Blocks

- Default Block
  
```tex
    \begin{block}{Default Block}
        Body of default block.
    \end{block}
```

- Alert Block
  
```tex
    \begin{alertblock}{Alert Block}
        Body of alert block.
    \end{alertblock}
```

- Example Block
  
```tex
    \begin{exampleblock}{Example Block}
        Body of example block.
    \end{exampleblock}
```

### Texts

- Example text
```tex
 \example{Text Example}
```

- Emphasis text
```tex
 \emph{Text emphasis}
```

### Boxes

- Simple Box

```tex
\simplebox{testando o simple box}
```

- Alert Box

```tex
\alertbox{testando o alert box}
```

- Success Box

```tex
\successbox{testando o success box}
```

### Codes

It is possible to insert codes in this presentation. This template uses two packages for algorithms: `algorithm2e` and `listings`. 

- **Documentation** 
  
  - algorithm2e: [Algorithm2e Package Documentation](http://linorg.usp.br/CTAN/macros/latex/contrib/algorithm2e/doc/algorithm2e.pdf)
  
  - listings: [Listings Package Documentation](http://linorg.usp.br/CTAN/macros/latex/contrib/listings/listings.pdf)

The following example shows how to create a pseudocode:

```tex
\begin{algorithm}[H]
    \SetAlgoLined #includes indentation
    \LinesNumbered #includes lines number
    \SetKwInOut{Input}{input}
    \SetKwInOut{Output}{output}
    \Input{write the input}
    \Output{write the output}
    \KwData{write the data}
    \KwResult{Write the result}
    initialization\;
    \While{While condition}
    {
        instructions\;
        \eIf{condition}{
           instructions1\;
           instructions2\;
           }{
           instructions3\;
        }
    } 
    \caption{How to write algorithms}
\end{algorithm}
```

The following example shows how to insert a code that is in the project files:

```tex
\begin{frame}{Including Codes}
    \lstset{language=Python}
    \lstinputlisting[language=Python]{path_of_python_code.py}
\end{frame}
```

The following example shows how to insert a figure:

```tex
\begin{figure}
    \centering
    \caption{Caption of the Figure}
    \includegraphics[scale=1]{path_of_the_figure}
    \source{Source of the Figure}
    \label{fig:figlabel}
\end{figure}
```

The following example shows how to insert a multi-columns:

```tex
\begin{columns}{}
    \begin{column}{0.5\textwidth}
        \justify
        Text of the left side!
    \end{column}
    \begin{column}{0.5\textwidth}
        \justify
        Text of the right side!
    \end{column}
\end{columns}    
```

### Custom Commands

This template has some custom commands that are described below:

To print 'Universidad Nacional de Colombia'
```tex
\ufc
```

To put the department name
```tex
\department{Department Name}
```

To put the email
```tex
\email{user@domain}
```

## Changelog

[Changelog File](./CHANGELOG.md)

## Author

Developed by <b></b> :metal: 

[![Gmail](https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:maumneto@gmail.com)[![Twitter](https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/maumneto)[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/maumneto/)[![Medium](https://img.shields.io/badge/Medium-12100E?style=for-the-badge&logo=medium&logoColor=white)](https://medium.com/@maumneto)[![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/maumneto)
