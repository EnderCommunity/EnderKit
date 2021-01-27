echo -e "\n\e[34m[EnderKit]\e[0m Are you sure you wanna start setting up EnderKit? (y/n)"
read isSure
if [[ $isSure == "n" ]]
then
exit
fi
echo -e "\n\e[34m[EnderKit]\e[0m Downloading Git Cinnabar"
git clone https://github.com/glandium/git-cinnabar.git
echo -e "\n\e[34m[EnderKit]\e[0m Setting The PATH Of Git Cinnabar"
export PATH=$PATH:/c/Users/win10/Desktop/EnderCommunity/EnderKit/git-cinnabar/
echo -e "\n\e[34m[EnderKit]\e[0m Testing Git Cinnabar"
git cinnabar --version
echo -e "\n\e[34m[EnderKit]\e[0m Downloading Gecko"
hg clone https://hg.mozilla.org/mozilla-central/
echo -e "\n\e[34m[EnderKit]\e[0m Redirecting to mozilla-central"
cd mozilla-central
echo -e "\n\e[34m[EnderKit]\e[0m \e[93m[NOTE]\e[0m Make sure to choose option 1 (Firefox for Desktop Artifact Mode)"
echo -e "\n\e[34m[EnderKit]\e[0m \e[93m[NOTE]\e[0m Make sure to always say yes (y) except for the last question"
sleep 5
echo -e "\n\e[34m[EnderKit]\e[0m Running Mach Bootstrap"
./mach bootstrap
echo -e "\n\e[34m[EnderKit]\e[0m Running Cat Mozconfig"
cat mozconfig