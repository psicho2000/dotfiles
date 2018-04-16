## Introduction
Dotfile collection for combined bash/zsh usage. Includes:
* Solarized theme
  * Remember to additionally set a Solarized Theme in your favorite Terminal Emulator, e.g.
    * MobaXterm > Settings > Configuration > Terminal > Colors: Solarized Dark 
* Docker aliases
* Nano as default Editor with biased settings, e.g.
  * Show line numbers
  * Tabs to Spaces with width 4
  * Coloring for Title, Status, Line Numbers and Quick help
  * Coloring for YAML files (e.g. docker-compose.yml)
* Setup for oh-my-zsh with biased configuration
  * ys Theme
  * Plugins
    * colorize (adds alias colorize <filename>)
    * colored-man-pages (man pages are colored by default)
    * common-aliases
    * dircycle (use Ctrl+Shift+Left/Right to cycle through recent directories)
    * sudo (Use Esc+Esc to add/remove sudo from beginning of line)

## Usage

### Installation
 1. `cd ~`
 1. `git clone https://github.com/psicho2000/dotfiles.git`
 1. `dotfiles/symlink-dotfiles.sh`
 1. `dotfiles/install-oh-my-zsh.sh` (optionally, requires zsh)

### Remove Symlinks
 1. `dotfiles/unlink-dotfiles.sh`

## Layout
```
       .bashrc            .zshrc     .nanorc     .inputrc
          |                |   |
          v                v   L--> .oh-my-zsh/
    .bash_profile      .zsh_custom
       |     | |           |
       |     | |           v
       |     | L------->.load_common_files
       v     |            |  |     |  |  |
.bash_prompt |            |  |     |  |  L--> .custom
             |            v  |     |  v
             |      .aliases |     | .dircolors
             |               v     v
             |         .exports    .dockercfg
             v
.docker-compose-completion.sh
```

## References
 * https://dotfiles.github.io/
 * https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
 * https://www.foraker.com/blog/get-your-dotfiles-under-control