# MathJax

- [PyMdown - Material for MkDocs](https://squidfunk.github.io/mkdocs-material/extensions/pymdown/#arithmatex-mathjax)
    - この設定に変える必要あり。現在は下でやってる。2018/10/3
- [MathJax with MkDocs](https://qiita.com/mebiusbox2/items/a61d42878266af969e3c#-%E6%95%B0%E5%BC%8F)



## Configure

```
markdown_extensions:
    - mdx_math:
        enable_dollar_delimiter: True
```



## Example code

```sh
$$
P\cdot Q = \|P\|\|Q\|\cos\alpha
$$
```



## Example rendering

$$
P\cdot Q = \|P\|\|Q\|\cos\alpha
$$
