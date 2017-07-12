# Load the shell dotfiles, and then some:
for file in ~/.{bash_prompt,exports,aliases,functions,docker}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
