#!/bin/bash

currentPath="$(pwd)"

echo "Do you want to init astronvim for root?"
select yn in "Yes" "No" "Cancel"; do
	case $yn in
	Yes)
		echo "Initializing for root and $USER"
		sudo rm -rf /home/root/.config/nvim

		sudo git clone --depth 1 https://github.com/AstroNvim/AstroNvim /home/root/.config/nvim
		sudo ln -s "$currentPath"/astro/user /home/root/.config/nvim/lua/user
		sudo chown -R root:root /home/root/.config/nvim

		break
		;;
	No)
		echo "Initializing for $USER"
		break
		;;
	Cancel)
		echo "No config was changed!"
		exit
		;;
	esac
done

rm -rf ~/.config/nvim
ln -s "$currentPath"/nvim ~/.config/nvim

