## Introduction
Dotfile collection for combined bash/zsh usage. Includes:
* Solarized theme
  * Remember to additionally set a Solarized Theme in your favorite Terminal Emulator, e.g.
    * MobaXterm > Settings > Configuration > Terminal > Colors: Solarized Dark 
* Script for symlinking dotfiles into home dir
* Docker aliases
* Biased Nano settings, e.g.
  * Show line numbers
  * Tabs to Spaces with width 4
  * Coloring for Title, Status, Line Numbers and Quick help
  * Coloring for YAML files (e.g. docker-compose.yml)
* Setup for oh-my-zsh with biased configuration
  * ys Theme
  * Nano as default Editor
  * Plugins
    * colorize (adds alias colorize <filename>)
    * colored-man-pages (man pages are colored by default)
    * common-aliases
    * dircycle (use Ctrl+Shift+Left/Right to cycle through recent directories)
    * sudo (Use Esc+Esc to add/remove sudo from beginning of line)

## References
 * https://dotfiles.github.io/
 * https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
 * https://www.foraker.com/blog/get-your-dotfiles-under-control