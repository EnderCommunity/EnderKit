echo -e "\n\e[34m[EnderKit]\e[0m Redirecting to gecko-dev"
cd gecko-dev
echo -e "\n\e[34m[EnderKit]\e[0m \e[93m[NOTE]\e[0m Make sure to choose option 1 (Firefox for Desktop Artifact Mode)"
echo -e "\n\e[34m[EnderKit]\e[0m \e[93m[NOTE]\e[0m Make sure to always say yes (y) except for the last question"
sleep 5
echo -e "\n\e[34m[EnderKit]\e[0m Running Mach Bootstrap"
./mach bootstrap
echo -e "\n\e[34m[EnderKit]\e[0m Running Cat Mozconfig"
cat mozconfig
echo -e "\n\e[34m[EnderKit]\e[0m Setting The PATH Of Git Cinnabar"
export PATH=$PATH:/c/Users/win10/Desktop/EnderCommunity/EnderKit/git-cinnabar/
#echo -e "\n\e[34m[EnderKit]\e[0m Updaing The URL Of The Repo"
#git remote set-url origin hg::https://hg.mozilla.org/mozilla-central