# Load the shell dotfiles
for file in ~/.{bash_prompt,exports,aliases,functions,docker}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Set dircolors
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

# Define alias for colorized less
function lessc() {
    case "$1" in
        # add all extensions you want to handle here
        *.awk|*.groff|*.java|*.js|*.m4|*.php|*.pl|*.pm|*.pod|*.sh|*.ad[asb]|*.asm|*.inc|*.[ch]|\
        *.[ch]pp|*.[ch]xx|*.cc|*.hh|*.lsp|*.l|*.pas|*.p|*.xml|*.xps|*.xsl|*.axp|*.ppd|*.pov|\
        *.diff|*.patch|*.py|*.rb|*.sql|*.ebuild|*.eclass)
            pygmentize -f terminal256 -O style=native -g "$1"|less
        *)
            less $1
    esac
}