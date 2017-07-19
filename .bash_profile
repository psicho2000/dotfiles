# Load the shell dotfiles
for file in ~/.{bash_prompt,exports,functions,aliases,docker}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Set dircolors
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

# Define shell coloring
# see http://linux-sxs.org/housekeeping/lscolors.html
export LS_COLORS='no=00:fi=00:di=01;31:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

# Define alias for colorized less
function lessc() {
    case "$1" in
        # add all extensions you want to handle here
        *.awk|*.groff|*.java|*.js|*.m4|*.php|*.pl|*.pm|*.pod|*.sh|*.ad[asb]|*.asm|*.inc|*.[ch]|\
        *.[ch]pp|*.[ch]xx|*.cc|*.hh|*.lsp|*.l|*.pas|*.p|*.xml|*.xps|*.xsl|*.axp|*.ppd|*.pov|\
        *.diff|*.patch|*.py|*.rb|*.sql|*.ebuild|*.eclass)
            pygmentize -f terminal256 -O style=native -g "$1"|less; exit 0;;
        *)
            less $1; exit 0;;
    esac
}

# Highlight section titles in manual pages.
export LESS_TERMCAP_md="${yellow}";