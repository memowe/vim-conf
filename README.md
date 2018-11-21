# memowe's vim configuration

On some systems, the default `vim` isn't compiled with ruby support. On Ubuntu, use `sudo apt install vim-nox`.

```bash
$ git clone --recurse-submodules https://github.com/memowe/vim-conf.git .vim
```

## After installation

```bash
$ cd $HOME/.vim/bundle/command-t/ruby/command-t/ext/command-t
$ ruby extconf.rb
$ make
```

**DON'T** `make cleanup`!
