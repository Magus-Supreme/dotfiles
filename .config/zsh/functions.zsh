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
	sudo xbps-remove -Oo
	flatpak update -y
	flatpak repair &>/dev/null
	sudo rm -rf /var/tmp/flatpak-cache-*
	rm -rf $HOME/.cache/flatpak
	flatpak remove --unused -y
	neofetch --config none
}

function cd() {
	if [ -n "$1" ]; then
		chdir "$@" && exa --group-directories-first --icons
	else
		chdir ~ && exa --group-directories-first --icons
	fi
}

function z() {
	__zoxide_z "$@" && exa --group-directories-first --icons $pwd
}

function texcomp() {
	pdflatex -interaction=nonstopmode -output-directory=.latextmp $1
	mv -f .latextmp/*.pdf .
}
