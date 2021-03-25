echo
echo "Installing Git"
brew install git

echo
echo "Setting global Git configurations"
git config --global core.editor /usr/local/bin/vim
git config --global transfer.fsckobjects true

echo
echo "Installing Git-Together"
echo "https://github.com/kejadlen/git-together"
brew install git-together

echo
echo "Configuring Git-Together"
# `git-together` is meant to be aliased as `git`
echo "echo 'alias git=git-together' >> ~/.bash_profile"

# Use .git-together per project for author configuration
git config --add include.path ../.git-together
# Or use one .git-together for all projects
git config --global --add include.path ~/.git-together

# Setting the default domain
git config --file .git-together --add git-together.domain vmware.com
# Adding myself
git config --file .git-together --add git-together.authors.nn 'Cappy Hausfeld; chausfeld'

echo
echo "Installing Vim"
brew install vim
