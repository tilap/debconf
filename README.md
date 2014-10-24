# Basic home files

- Bash config (bashrc, bashlogout)
- Vim config
- Git config

Manual install (sym links or includes) so no magic, take only what you need.

## Bashrc

### Install

Edit your .bashrc and add that stuff at the begenning
You can then override and/or keep your own stuff after that rows.

```
export TILAPDIR="$HOME/Tilap/home"

if [ -f $TILAPDIR/.bashrc ]; then
    . $TILAPDIR/.bashrc
fi
```

### What it provides

* Colors for ls
* Default editor is vim
* history custom (format, simple history and sizes)
* command line head
* load alias/functions
* display logo and fortune if install

#### Alias

* by default, file deletion/move ask you confirmation (avoid to erase anything)
* ls commands have colors, and lots of alias for the options (la, ll, lx, lk, ...)
* grep comes with colors (and egrep, fgrep too)
* some stupid shortcuts coz I am a lazy boy

#### Functions
* seelog [file] : display a log file nicely (require csse package)
* ff [pattern] : find a file based on its name
* extract [file] : automatically run tar, unzip and so on
* swap [file1] [file2] : switch too files

And improve bash completion

## Bash logout

### Install

```
cd
ln -s TILAPDIR/bashrc/.bash_logout .bash_logout
```

### Feature

Will clear your screen for your privacy

## Vimrc

### Install

```
cd
ln -s TILAPDIR/.vimrc .vimrc
```

### Features

* tab: 4
* remember position when exiting, restore when reopen the file
* bb/bn show or hide line rows
* Ctrl+n set/unset relative number line if supported

## Gitconfig

Comes with basic user config, shortcuts and colors.

```
cd
ln -s TILAPDIR/.gitconfig .gitconfig
```
