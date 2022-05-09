# DOOM Emacs

## Recommended packages

`init.el`:

``` emacs-lisp
       :editor
       parinfer            ; turn lisp into python, sort of

       :os
       (:if IS-MAC macos)  ; improve compatibility with macOS
       tty                 ; improve the terminal Emacs experience

       :lang
       (clojure +lsp)      ;
       json                ;
       markdown            ; 
       sh                  ; 
       yaml                ; 
```

## Running inside the terminal

Enable `tty` in the `init.el` and start emacs using `--no-window-system` option:

```sh
emacs -nw
```

## Running as daemon

Starting the daemon:

```sh
emacs --daemon
```

Connecting to it:

```sh
emacsclient -nw
```

## Aliases

`.zshrc` or similar:

``` sh
alias e="emacsclient -nw"
alias ekill="emacsclient -e '(kill-emacs)'"
alias edaemon="emacs --daemon"
alias erestart="ekill && edaemon"
```



| sdfa       | adfa |
|------------|------|
| adfa adfaf | adf  |


