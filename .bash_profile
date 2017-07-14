# Load the shell dotfiles, and then some:
for file in ~/.{bash_prompt,exports,aliases,functions,docker}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

if [ -f /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh ]; then
    source /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
fi