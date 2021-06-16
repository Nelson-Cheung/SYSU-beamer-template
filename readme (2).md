# 中山大学PPT模板

<center>张钧宇<br>18340211<br>计算机科学与技术<br>zhangjunyu@nelson-cheung.cn<br>https://nelson-cheung.cn</center>

# 编译方法

本模板在`texlive 2021`下成功编译，编译命令如下。

```shell
xelatex document.tex
bibtex document
xelatex document.tex
xelatex document.tex
```

清除中间文件。

```
make clean
```



# 存在的问题

+ frame中脚注不显示的问题。

# 引言

本模板基于[Presentación UNAL](https://www.overleaf.com/latex/templates/presentacion-unal/nzfkbkgnctfp)，[SYSU Beamer Template](https://github.com/yxnchen/sysu-beamer-template)，[THU Beamer Theme](https://www.overleaf.com/latex/templates/thu-beamer-theme/vwnqmzndvwyb)，做出如下修改。

+ 去除背景的水印图片，背景水印图片会导致页面切换时产生屏闪现象。
+ 基于[Presentación UNAL](https://www.overleaf.com/latex/templates/presentacion-unal/nzfkbkgnctfp)的排版风格，使用[SYSU Beamer Template](https://github.com/yxnchen/sysu-beamer-template)的颜色主题，采用[THU Beamer Theme](https://www.overleaf.com/latex/templates/thu-beamer-theme/vwnqmzndvwyb)的内容进行测试。

# 使用举例

## blocks

```latex
\begin{frame}
    \frametitle{普通区块}
  
    \begin{block}{国内\LaTeX\ 讨论区}
      \begin{enumerate}
        \item LaTeX Studio\footnote{\url{https://www.latexstudio.net/}}
      \end{enumerate}
    \end{block}
  
    \begin{alertblock}{国外\LaTeX\ 讨论区}
      \begin{enumerate}
        \item LaTeX Stack Exchange\footnote{\url{https://tex.stackexchange.com/}}
      \end{enumerate}
    \end{alertblock}

    \begin{exampleblock}{example 示例环境}
      \begin{enumerate}
        \item LaTeX Stack Exchange\footnote{\url{https://tex.stackexchange.com/}}
      \end{enumerate}   
    \end{exampleblock}

\end{frame}
```

## 表格

```latex
\begin{frame}{Why Beamer}
  \begin{itemize}
      \item \LaTeX 广泛用于学术界，期刊会议论文模板
  \end{itemize}
  \begin{table}[h]
      \centering
      \begin{tabular}{c|c}
          Microsoft\textsuperscript{\textregistered}  Word & \LaTeX \\
          \hline
          文字处理工具 & 专业排版软件 \\
          容易上手，简单直观 & 容易上手 \\
          所见即所得 & 所见即所想，所想即所得 \\
          高级功能不易掌握 & 进阶难，但一般用不到 \\
          处理长文档需要丰富经验 & 和短文档处理基本无异 \\
          花费大量时间调格式 & 无需担心格式，专心作者内容 \\
          公式排版差强人意 & 尤其擅长公式排版 \\
          二进制格式，兼容性差 & 文本文件，易读、稳定 \\
          付费商业许可 & 自由免费使用 \\
      \end{tabular}
  \end{table}
\end{frame}
```

## 图片

```latex
\begin{frame}{图片展示}
  \begin{figure}
      \centering
      \caption{Logo of SYSU}
      \includegraphics[scale=0.05]{libs/sysu_big_logo.jpeg}
      \source{Nelson Cheung\cite{sitiounal} \cite{einstein}}
  \end{figure}
\end{frame}
```

## 数学公式

```latex
\begin{frame}{排版举例}
  \begin{equation*}
    J(\theta) = \mathbb{E}_{\pi_\theta}[G_t] = \sum_{s\in\mathcal{S}} d^\pi (s)V^\pi(s)=\sum_{s\in\mathcal{S}} d^\pi(s)\sum_{a\in\mathcal{A}}\pi_\theta(a|s)Q^\pi(s,a)
  \end{equation*}
      
  \begin{align}
    Q_\mathrm{target}&=r+\gamma Q^\pi(s^\prime, \pi_\theta(s^\prime)+\epsilon)\\
          \epsilon&\sim\mathrm{clip}(\mathcal{N}(0, \sigma), -c, c)\nonumber
  \end{align}
\end{frame}

\begin{frame}
  \begin{exampleblock}{编号多行公式}
      % Taken from Mathmode.tex
      \begin{multline}
          A=\lim_{n\rightarrow\infty}\Delta x\left(a^{2}+\left(a^{2}+2a\Delta x+\left(\Delta x\right)^{2}\right)\right.\label{eq:reset}\\
          +\left(a^{2}+2\cdot2a\Delta x+2^{2}\left(\Delta x\right)^{2}\right)\\
          +\left(a^{2}+2\cdot3a\Delta x+3^{2}\left(\Delta x\right)^{2}\right)\\
          +\ldots\\
          \left.+\left(a^{2}+2\cdot(n-1)a\Delta x+(n-1)^{2}\left(\Delta x\right)^{2}\right)\right)\\
          =\frac{1}{3}\left(b^{3}-a^{3}\right)
      \end{multline}
  \end{exampleblock}
\end{frame}
```

## 伪代码

```latex
\begin{frame}{算法(pseudocode)}
    \begin{algorithm}[H]
        \SetAlgoLined
        \LinesNumbered
        \SetKwInOut{Input}{input}
        \SetKwInOut{Output}{output}
        \Input{x: float, y: float}
        \Output{r: float}
        \While{True}{
          r = x + y\;
          \eIf{r >= 30}{
           ``do something''
           break\;
           }{
            ``do nothing''
          }
         } 
         \caption{Algorithm Example}
    \end{algorithm}
\end{frame}
```

## 真实代码

```latex
\begin{frame}{真实代码}
  \lstset{language=Python}
  \lstinputlisting[language=Python]{code/main.py}
\end{frame}

\begin{frame}{真实代码}
  \lstinputlisting[language=C]{code/source.c}
\end{frame}

\begin{frame}{真实代码}
  \lstinputlisting[language=Java]{code/helloworld.java}
\end{frame}

\begin{frame}{真实代码}
  \lstinputlisting[language=HTML]{code/index.html}
\end{frame}
```

# 参考文献

```latex
\begin{frame}[allowframebreaks]
    \printbibliography[title = {参考文献}]
\end{frame}
```

