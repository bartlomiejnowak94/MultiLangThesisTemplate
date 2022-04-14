# MultiLangThesisTemplate
Multi language LaTeX Thesis Template. Includes few styles and template in two languages: Polish and English.
Style of chapters (Excluding BNowak styles) are provides by: [Memoir Chapter Style](http://tug.ctan.org/info/MemoirChapStyles/MemoirChapStyles.pdf)
Ornaments are provided by: [Pgfornament](https://ctan.math.illinois.edu/macros/latex/contrib/tkz/pgfornament/doc/ornaments.pdf)

# Table of Contents
- [Preview](#preview)


## Preview

| Polish | English |
|:---:|:---:|
|  ![Polish](https://raw.githubusercontent.com/bartlomiejnowak94/MultiLangThesisTemplate/main/example_fig/PL.PNG)   |  ![English](https://raw.githubusercontent.com/bartlomiejnowak94/MultiLangThesisTemplate/main/example_fig/ENG.PNG)  |

## Structure


## How to use it?
#### Swaping between languages
One can select english language by setting option in `ThesisTemplate.tex`:
```
\langeng
```
To change language to polish change (uncomment) above to
```
\langpol
```
#### Swaping header styles
To change header style one should change parameter in 
```
\chapterstyle{default}
```
in file `ThesisTemplate.tex`. Possible parameters: 
```
\chapterstyle{section}
\chapterstyle{article}
\chapterstyle{bianchi}
\chapterstyle{chappell}
\chapterstyle{dash}
\chapterstyle{lyhne}
\chapterstyle{madsen}
\chapterstyle{southall}
\chapterstyle{thatcher}
\chapterstyle{daleif1-red}
\chapterstyle{daleif1-black}
\chapterstyle{daleif3}
\chapterstyle{AlexanderGrebenkov}
\chapterstyle{VZ21}
\chapterstyle{VZ23}
\chapterstyle{VZ14}
\chapterstyle{VZ15b}
\chapterstyle{VZ34}
\chapterstyle{BNowak}
\chapterstyle{BNowak2}
\chapterstyle{BNowak3}
```
All styles are presented in the [Gallery](https://github.com/bartlomiejnowak94/MultiLangThesisTemplate/tree/main/example_fig)

