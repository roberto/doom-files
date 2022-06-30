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

I recommend to use via GUI, since there are features that aren't available for terminals. Even though, there are a few tips to run from terminals in the end of this file.

## Running inside the terminal

Enable `tty` in the `init.el` and start emacs using `--no-window-system` option:

```sh
emacs -nw
```

## Running as daemon

> For HomeBrew installations, use `brew info [...]` to check if there are related instructions.
> 
> e.g: `brew info emacs-plus@28`

Starting the daemon:

```sh
emacs --daemon
```

Alternatives: [EmacsWiki/EmacsDaemon](https://www.emacswiki.org/emacs/EmacsAsDaemon)

Connecting to it:

```sh
emacsclient -nw
```

## Example of aliases

`.zshrc` or similar:

``` sh
alias e="emacsclient -nw"
alias ekill="emacsclient -e '(kill-emacs)'"
alias edaemon="emacs --daemon"
alias erestart="ekill && edaemon"
```

## Creating an "app" (MacOS)

Using the application `Script Editor`:

```
tell application "Terminal"
	set frames to do shell script "/usr/local/bin/emacsclient -a '' --eval '(frames-on-display-list)'"
	if (frames does not contain "Doom") then
		do shell script "/usr/local/bin/emacsclient --create-frame --no-wait"
	end if
	quit
end tell
tell application "Emacs" to activate
```

**Export** it `~/Applications/Emacs Client` using the `File Format` `Application`, as shown bellow:

![docs/images/export-app.png](docs/images/export-app.png)

Configure the application `Terminal` to never ask to close, going to `Preferences → Profiles → Shell` and change the options as bellow:

* When the shell exits: Close if the shell exited cleanly
* Ask before closing: Never

![docs/images/terminal-close.png](docs/images/terminal-close.png)

### Setting the icon

Copy the icon from the emacs installation to your generated application. Example:

```
cp /usr/local/opt/emacs-plus@28/Emacs.app/Contents/Resources/Emacs.icns ~/Applications/Emacs\ Client.app/Contents/Resources/applet.icns
```
