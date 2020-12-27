# githubsy.vim
A dark color scheme for vim based on Github's dark syntax highlighting.

## Color Spec
Original colors can be found here:\
https://github.com/primer/github-syntax-dark/blob/master/lib/github-dark.css 

### Colors extracted from FF devtools
It seems that the actual colors in the CSS output do not comply to Github's own spec...

| name              | spec      | actual    | converted |       | scheme      | note
|-------------------|-----------|-----------|-----------|-------|-------------|-------------------------
| AllBlack          |           | #0d1117   | #000000   | 16    |             | GH syntax hl (background)
| AlmostBlack       |           |           | #121212   | 234   |             | 
| SteelGray         |           | #8b949e   | #8787af   | 103   |             | GH syntax hl (comment)
| NormieWhitey      |           | #c9d1d9   | #d7d7d7   | 188   |             | GH syntax hl (normal text)
| PurpleGray        |           |           | #8787d7   | 104   |             | 
| BlueGray          | #6a737d   |           | #5f8787   | 66    | #5f87af 67  | pl-sg gutter
| GreenGray         | #959da5   |           | #87afaf   | 109   |             | pl-c comment
| EarthenBrown      | #b08800   |           | #af8700   | 137   |             | pl-mc mh changed
| EminentRed        | #d73a49   |           | #d75f5f   | 167   |             | pl-bu inv broken
| EminentRed        | #ea4a5a   |           | #d75f5f   | 167   |             | pl-k keyword
| RustyRed          | #fb8532   | #ff7b72   | #ff875f   | 209   |             | pl-v variable
| JazzyOrange       |           | #ffa657   | #ffaf5f   | 215   |             |
| PurplePillsPurple | #b392f0   |           | #af87ff   | 141   |             | pl-e entity
| PleasingPurple    |           | #d2a8ff   | #d7afff   | 183   |             |
| MistyPurple       | #c8e1ff   |           | #d7d7ff   | 189   |             | pl-c1 constant
| BasicBlue         | #0366d6   |           | #005fd7   | 26    |             | pl-mh heading
| CandyMethBlue     |           | #58a6ff   | #5fafff   | 75    |             | GH Repo title
| TrueBlue          | #79b8ff   | #79c0ff   | #87afff   | 111   |             | pl-s string, GH syntax hl (variable)
| MistyBlue         |           | #a5d6ff   | #afd7ff   | 153   |             | GH syntax hl (string)
| AcidGreen         |           | #7bcc72   | #87d75f   | 113   |             | pl-ent entity tag
| LizardGreen       |           | #7ee787   | #87d787   | 114   |             | GH syntax hl (html tag)
| MistyGreen        |           |           | #afd7d7   | 152   |             | 

## Prior Art
Many thanks to wadackel for his [dogrun](https://github.com/wadackel/vim-dogrun) color
scheme. Not only is it a great color scheme which I used as a base for creating my own,
it also enabled me to write my first Rust macros (which I basically stole from him 😃).

