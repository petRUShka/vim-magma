# Vim magma plugin

Vim-magma is a vim plugin for the [Magma] computer algebra system. Vim-magma supports syntax highlighting and indentation for Magma.

[Magma]: http://magma.maths.usyd.edu.au/magma/

## Installation

These instructions assume you use a bundler (e.g. [Pathogen]). In this case you should do following:

```sh
$ cd ~/.vim/bundle
$ git clone https://github.com/Garogolun/vim-magma.git
```

[Pathogen]: https://github.com/tpope/vim-pathogen

## Keywords

The [list](magma-keywords) of keywords used is generated by

```sh
$ magmadoc=/path/to/magma/doc/html
$ cat $magmadoc/*.htm | sed -nr "s/^.*NAME = \"([A-Z][[:alnum:]]*)\".*$/\1/p" | sort > magma-keywords
```

That trick is stolen from [magma-mode], see [this file].

You may find this list also useful for [rlwrap]. Use it with `magma -f magma-keywords` or install to `~/.magma_completions`.

[magma-mode]: https://github.com/ThibautVerron/magma-mode
[this file]: https://raw.githubusercontent.com/ThibautVerron/magma-mode/master/bin/build_completion_table.sh
[rlwrap]: https://github.com/hanslub42/rlwrap

## Credits
Originally placed at [http://www.cryptojedi.org/programming/index.shtml].
