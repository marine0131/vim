1. copy the .vimrc to your home folder
2. in ~/.vim/plugged folder, mkdir autoload
3. get plug-vim: curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
4. install plugins: enter vim environment and input :PlugInstall
5. wait untill done

while install youcompeleteme it would fail, go into the .vim/plugged/YouCompleteMe/ folder,run python3 install.py (--clang-completer)
