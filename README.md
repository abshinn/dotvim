abshinn/dotvim
===

This is my vim configuration! Nothing too special. I use a few Vundle bundles, and a handful of other custom settings I have found to be useful.

### Current Vundle Plugins

- [tpope/vim-fugitive](http://github.com/tpope/vim-fugitive) - Github commands in vim with :G{command}
- [ervandew/supertab](http://github.com/ervandew/supertab) - Smart tab completion
- [davidhalter/jedi-vim](http://github.com/davidhalter/jedi-vim) - Python auto-complete and syntax
- [itchyny/lightline.vim](http://github.com/itchyny/lightline.vim) - Simple status bar
- [jtratner/vim-flavored-markdown](http://github.com/jtratner/vim-flavored-markdown) - Github-flavored markdown syntax highlighting

### Vundle Install

Vundle is a simple plugin manager created by [gmarik](http://github.com/gmarik) for vim that is easy to set up. Vundle itself is version controlled with Github. For installation, all you have to do is clone the repository. 

```bash
$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

See [gmarik/Vundle](https://github.com/gmarik/Vundle.vim) for more information.

### Cloning this Repo

Be sure to keep your own files as backup, then name this repository `.vim` in your home directory, and set up the symbolic link as discussed below.

### Link to vimrc

Importantly, I create `.vimrc` as a symbolic link in my home directory, pointing to `vimrc` in this repository.

```shell
$ ln -s ~/.vim/vimrc ~/.vimrc
```

