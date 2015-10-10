.PHONY: install, clean

install:
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#	ln -s ~/dotfiles.git/sys/.bashrc ~/.bashrc
	ln -s ~/dotfiles.git/sys/.inputrc ~/.inputrc
	ln -s ~/dotfiles.git/vim/.vimrc ~/.vimrc 
	ln -s ~/dotfiles.git/vim/.vim ~/.vim
	ln -s ~/dotfiles.git/vim/.indexer_files ~/.indexer_files 
	ln -s ~/dotfiles.git/tmux/.tmux.conf ~/.tmux.conf
	ln -s ~/dotfiles.git/tmux/.tmux ~/.tmux
	ln -s ~/dotfiles.git/git/.gitconfig ~/.gitconfig 
	

clean:
#	unlink ~/.bashrc
	unlink ~/.inputrc 
	unlink ~/.vimrc 
	unlink ~/.vim
	unlink ~/.tmux.conf
	unlink ~/.tmux
	unlink ~/.indexer_files
	unlink ~/.gitconfig

	
