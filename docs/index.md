# Material for MkDocs

- [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)
- [Material for MkDocs を日本語対応](https://miyalog.hatenablog.jp/entry/2017-11-07_MkDocs_Material_Japanese_support)
- [MkDocsによるドキュメント作成](https://qiita.com/mebiusbox2/items/a61d42878266af969e3c)


## MkDocs commands

```sh
mkdocs new project-name
mkdocs serve
mkdocs build
mkdocs gh-deploy
```


## MathJax

- [PyMdown - Material for MkDocs](https://squidfunk.github.io/mkdocs-material/extensions/pymdown/#arithmatex-mathjax)
    - この設定に変える必要あり。現在は下でやってる。2018/10/3
- [MathJax with MkDocs](https://qiita.com/mebiusbox2/items/a61d42878266af969e3c#-%E6%95%B0%E5%BC%8F)

### Configure

```
markdown_extensions:
    - mdx_math:
        enable_dollar_delimiter: True
```

### Example code

```sh
$$
P\cdot Q = \|P\|\|Q\|\cos\alpha
$$
```

### Example rendering

$$
P\cdot Q = \|P\|\|Q\|\cos\alpha
$$


## CodeHilite

- [CodeHilite - Material for MkDocs](https://squidfunk.github.io/mkdocs-material/extensions/codehilite/)
- [Supported languages - Pygments](http://pygments.org/languages)

### Configure

```
markdown_extensions:
  - codehilite
```


## Footnote

- [Footnotes - Material for MkDocs](https://squidfunk.github.io/mkdocs-material/extensions/footnotes/)

### Configure

```
markdown_extensions:
  - footnotes
```

### Example

- Footnote example 1.[^1]
- Footnote example 2.[^2]

[^1]: One line
[^2]:
    First line
    Second line
