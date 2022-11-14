command -v aria2c >/dev/null 2>&1 || { echo >&2 "seems you didn't install aria2 on your Computer Please install by using these command
---
Debian : sudo apt install aria2
---
Arch : sudo pacman -Sy aria2
---
Fedora : sudo dnf install aria2
---
Homebrew : brew install aria2
---
NixOS : nix-env -iA nixpkgs.aria
---
Termux : pkg install aria2
"; exit 1; }

echo "What is your Download link?"
read link
echo "How many threads do you want to send to the server (More threads Download will be more faster)"
read threads
echo "Download location"
read location
echo "Download Started"

Download=aria2c\ -x$threads\ $link\ -d\ $location
$Download

if [[ -f $location*.aria2 ]]
then
      $Download
fi
echo "Download Complete : D"
echo "Script made by blusewill"
echo "Website : blusewill.ml"
