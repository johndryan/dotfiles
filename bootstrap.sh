#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE}")"
# ------------------------------------------
# Setup a file with non-git-commited details
EXTRAFILE=~/.extra
# Check whether the ~/.extra file exists
if [[ ! -f $EXTRAFILE ]]; then
	# If not, proceed with prompts to set it up
	echo 
	echo "The $EXTRAFILE file doesn't exist. Let's make one with your personal details."
	echo -n "Enter your author name (for git) and press [ENTER]: "
	read name
	# TODO: validate name
	echo -n "Enter your email address (for git) and press [ENTER]: "
	read email
	# TODO: validate email address
	# TODO: add confirmation?
	echo
	sed -e "s/\${name}/$name/;s/\${email}/$email/" .extra_template > $EXTRAFILE
	echo -"Thanks! $EXTRAFILE created."
else
	echo "$EXTRAFILE exists. Great, we'll use it to configure git."
fi
# ------------------------------------------
# Now, get on with the dotfile bootstrapping
git pull origin master
function doIt() {
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
		--exclude "README.md" --exclude "LICENSE-MIT.txt" -av --no-perms . ~
	source ~/.bash_profile
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi
unset doIt
