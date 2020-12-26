
#### Colors extracted from FF devtools.
name        name given by me
spec        hex color as specified in github-dark.css
actual      hex of the actual color in FF devtools
converted   output of converter
scheme      color used in the scheme, might deviate for various reasons
* It seems that the actual colours in the CSS output do not comply to Github's own spec...

| name          | spec      | actual    | converted     | scheme      | note
|---------------|-----------|-----------|---------------|-------------|-------------------------
| background    |           | #0d1117   | #000000 16    |             | GH syntax hl (background)
| almost black  |           |           | #121212 234   |             | 
| purple gray   |           |           | #8787d7 104   |             | 
| blue gray     | #6a737d   |           | #5f8787 66    |             | pl-sg gutter
| green gray    | #959da5   |           | #87afaf 109   |             | pl-c comment
| steel gray    |           | #8b949e   | #8787af 103   |             | GH syntax hl (comment)
| normie gray   |           | #c9d1d9   | #d7d7d7 188   |             | GH syntax hl (normal text)
|               |           |           |               |             |
| earth brown   | #b08800   |           | #af8700 137   |             | pl-mc mh changed
| warning       | #d73a49   |           | #d75f5f 167   |             | pl-bu inv broken
| key red       | #ea4a5a   |           | #d75f5f 167   |             | pl-k keyword
| key orange    | #fb8532   | #ff7b72   | #ff875f 209   |             | pl-v variable
| light orange  |           | #ffa657   | #ffaf5f 215   |             |
|               |           |           |               |             |
| dim purple    | #b392f0   |           | #af87ff 141   |             | pl-e entity
|pleasing purple|           | #d2a8ff   | #d7afff 183   |             |
| purple mist   | #c8e1ff   |           | #d7d7ff 189   |             | pl-c1 constant
|               |           |           |               |             |
| full blue     | #0366d6   |           | #005fd7 26    |             | pl-mh heading
| poppin blue   |           | #58a6ff   | #5fafff 75    |             | GH Repo title
| dim blue      | #79b8ff   | #79c0ff   | #87afff 111   |             | pl-s string, GH syntax hl (variable)
| light blue    |           | #a5d6ff   | #afd7ff 153   |             | GH syntax hl (string)
|               |           |           |               |             |
| acid green    |           | #7bcc72   | #87d75f 113   |             | pl-ent entity tag
| dim green     |           | #7ee787   | #87d787 114   |             | GH syntax hl (html tag)
| green mist    |           |           | #afd7d7 152   |             | 
                     
#### Unique colours in github-dark.css

| class   name          | spec          | converted     | background
|-----------------------|---------------|---------------|------------------------
| pl-c    comment       | #959da5       | #87afaf 109   |
| pl-c1   constant      | #c8e1ff       | #d7d7ff 189   |
| pl-e    entity        | #b392f0       | #af87ff 141   |
| pl-smi  parameter     | #f6f8fa       | #ffffff 231   |
| pl-ent  entity tag    | #7bcc72       | #87d75f 113   |
| pl-k    keyword       | #ea4a5a       | #d75f5f 167   |
| pl-s    string        | #79b8ff       | #87afff 111   |
| pl-v    variable      | #fb8532       | #ff875f 209   |
| pl-bu   inv broken    | #d73a49       | #d75f5f 167   |
| pl-ii   inv illegal   | #fafbfc       | #ffffff 231   | #d73a49     #d75f5f 167
| pl-mh   mh heading    | #0366d6       | #005fd7 26    |
| pl-mi1  mh inserted   | #176f2c       | #005f00 22    | #f0fff4     #ffffff 231
| pl-mc   mh changed    | #b08800       | #af8700 136   | #fffdef     #ffffff 231
| pl-mi2  mh ignored    | #2f363d       | #005f5f 23    | #959da5     #87afaf 109
| pl-mdr  meta diff     | #b392f0       | #af87ff 141   |
| pl-sg   gutter        | #6a737d       | #5f8787 66    |

