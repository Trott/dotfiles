# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
    [ -r "$file" ] && source "$file"
done
unset file

# install z if it is not already installed
if [ ! -e ~/code/z/z.sh ]
    then
        mkdir -p ~/code/z
        curl https://raw.github.com/rupa/z/master/z.sh > ~/code/z/z.sh
        chmod +x ~/code/z/z.sh
fi

# z
. ~/code/z/z.sh
 
export NODE_PATH=/usr/local/lib/node_modules

if [ -e ~/.node-completion ]
    then
# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}
fi
