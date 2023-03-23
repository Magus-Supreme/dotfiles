function proxy() {
	local port="127.0.0.1:9910"
	if [[ $http_proxy == $port ]] && [[ $https_proxy == $port ]]; then
		export http_proxy=''
		export https_proxy=''
		echo 'Proxy closed'
		return 0
	fi
	export http_proxy=$port
	export https_proxy=$port
	echo 'Proxy is now ready'
}

function full_upgrade() {
	sudo xbps-install -Suy
	sudo xbps-remove -Ooy
	flatpak update -y
	flatpak repair &>/dev/null
	sudo rm -rf /var/tmp/flatpak-cache-*
	rm -rf $HOME/.cache/flatpak
	flatpak remove --unused -y
	neofetch --config none
}

function cd() {
	if [ -n "$1" ]; then
		chdir "$@"
		if [ $(\ls $pwd | wc -l) -lt 140 ]; then
			exa --group-directories-first --icons
		fi
	else
		chdir ~
		if [ $(\ls $pwd | wc -l) -lt 140 ]; then
			exa --group-directories-first --icons
		fi
	fi
}

function z() {
	__zoxide_z "$@"
	if [ $(\ls $pwd | wc -l) -lt 140 ]; then
		exa --group-directories-first --icons
	fi
}

function texcomp() {
	pdflatex -interaction=nonstopmode -output-directory=.latextmp $1
	mv -f .latextmp/*.pdf .
}

function git-config-watt-toolkit() {
	current=$(grep -i 'sslCAInfo' $HOME/.gitconfig)
	if [[ $current != '' ]]; then
		sed -i '/sslCAInfo/d' $HOME/.gitconfig
		sed -i '/[http]/d' $HOME/.gitconfig
		echo "Removed watt tool certificate in .gitconfig"
	else
		git config --global http.sslCAInfo /home/xiaoshihou/.local/share/Steam++/SteamTools.Certificate.cer
		echo "Added watt tool certificate to .gitconfig"
	fi
}
