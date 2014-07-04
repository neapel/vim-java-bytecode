# vim-java-bytecode

Highlights Java Bytecode as printed by `javap`.

## Installation

Using [NeoBundle](https://github.com/Shougo/neobundle.vim):

```
NeoBundle 'neapel/vim-java-bytecode'
```

Or, using [Vundle](https://github.com/gmarik/Vundle.vim):
```
Plugin 'neapel/vim-java-bytecode'
```

Or, using [Pathogen](https://github.com/tpope/vim-pathogen):
```
cd ~/.vim/bundle
git clone https://github.com/neapel/vim-java-bytecode.git
```

## Configuration

This doesn't contain a file detector, for automatic highlighting, set up an autocommand:

```
au BufNewFile,BufRead *.javap setf java-bytecode
```

