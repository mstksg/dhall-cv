Changelog
=========

v2.3.0
------

*April 22, 2022*

*   Reshuffle entire library to be more parametric, and expect Markdown
    everywhere instead of Text (or else be parameterized)

v2.2.0
------

*April 21, 2022*

*   New `Markdown` newtype
*   Change around exports -- `types` is now parameterized, and we have
    `textTypes` and `markdownTypes` for what used to be there.

v2.1.0
------

*April 14, 2022*

*   Export `rawTypes` for the parameterized types
*   Define functor instances

v2.0.0
------

*April 13, 2022*

*   Remove pdf-specific metadata from document and letter

v1.9.0
------

*April 12, 2022*

*   Split out the latex generation aspects into dhall-cv-latex
