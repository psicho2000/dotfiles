# Load the shell dotfiles, and then some:
for file in ~/.{bash_prompt,exports,aliases,functions,docker}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi