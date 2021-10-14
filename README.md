# Vim magma plugin

Vim-magma is a vim plugin for the [Magma] computer algebra system. Vim-magma supports syntax highlighting and indentation for Magma.

[Magma]: http://magma.maths.usyd.edu.au/magma/

## Installation

These instructions assume you use a bundler (e.g. [Vim-Plug]). In this case you should place following line in your vim config:

    Plug 'petRUShka/vim-magma'

[Vim-Plug]: https://github.com/junegunn/vim-plug

# Vim plugins to extend Magma support (together with vim-magma)

- [vimcmdline](https://github.com/jalvesaq/vimcmdline): send lines from Vim to interpreter (Magma and vim-magma are supported see [vimcmdline#95](https://github.com/jalvesaq/vimcmdline/pull/95));

## Built-ins

The [list](magma-builtins) of built-ins used is generated by

```sh
$ echo "ListSignatures(Any);" | MAGMA_USER_SPEC="" magma -b | tail -n+3 | grep "^[A-z]" | cut -f1 -d\( | sort -u > magma-builtins
```

The file `magma-builtins` very useful for completion. Press `Ctrl-X/Ctrl-O` in insert mode to force completion.

That trick is stolen from [magma-mode], see [build_completion_table.sh].

You may find this list also useful for [rlwrap]. Use it with `magma -f magma-builtins` or install to `~/.magma_completions`.

[magma-mode]: https://github.com/ThibautVerron/magma-mode
[build_completion_table.sh]: https://github.com/ThibautVerron/magma-mode/blob/master/bin/build_completion_table.sh
[rlwrap]: https://github.com/hanslub42/rlwrap



## Credits
Originally placed at http://www.cryptojedi.org/programming/index.shtml.
