source ~/.load_common_files

if [ -f ~/.bash_prompt ]; then
    source ~/.bash_prompt
fi

# Define alias for colorized less
function lessc() {
    case "$1" in
        # add all extensions you want to handle here
        *.awk|*.groff|*.java|*.js|*.m4|*.php|*.pl|*.pm|*.pod|*.sh|*.ad[asb]|*.asm|*.inc|*.[ch]|\
        *.[ch]pp|*.[ch]xx|*.cc|*.hh|*.lsp|*.l|*.pas|*.p|*.xml|*.xps|*.xsl|*.axp|*.ppd|*.pov|\
        *.diff|*.patch|*.py|*.rb|*.sql|*.ebuild|*.eclass)
            pygmentize -f terminal256 -O style=native -g "$1"|less -FRNX;;
        *)
            less $1;;
    esac
}

# Highlight section titles in manual pages.
export LESS_TERMCAP_md="${yellow}";