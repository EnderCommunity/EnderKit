echo -e "\n\e[34m[EnderKit]\e[0m Are you sure you wanna start setting up EnderKit? (y/n)"
read isSure
if [[ $isSure == "n" ]]
then
exit
fi
echo -e "\n\e[34m[EnderKit]\e[0m Downloading Gecko"
git clone https://github.com/mozilla/gecko-dev.git
echo -e "\n\e[34m[EnderKit]\e[0m Downloading Git Cinnabar"
git clone https://github.com/glandium/git-cinnabar.git
echo -e "\n\e[34m[EnderKit]\e[0m Setting The PATH Of Git Cinnabar"
export PATH=$PATH:/c/Users/win10/Desktop/EnderCommunity/EnderKit/git-cinnabar/
echo -e "\n\e[34m[EnderKit]\e[0m Testing Git Cinnabar"
git cinnabar --version