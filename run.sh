echo -e "\n\e[34m[EnderKit]\e[0m Do you want to rebuild EnderKit? (y/n)"
read isSure
if [[ $isSure == "y" ]]
then
echo -e "\n\e[34m[EnderKit]\e[0m Setting The PATH Of Git Cinnabar"
export PATH=$PATH:/c/Users/win10/Desktop/EnderCommunity/EnderKit/git-cinnabar/
echo -e "\n\e[34m[EnderKit]\e[0m Configuring Gecko"
cd mozilla-central/browser




sed -i "s/MOZ_BRANDING_DIRECTORY=browser\/branding\/unofficial/MOZ_BRANDING_DIRECTORY=kit\/branding/" "confvars.sh"
#sed -i "s/MOZ_BRANDING_DIRECTORY=kit\/branding/MOZ_BRANDING_DIRECTORY=browser\/branding\/unofficial/" "confvars.sh"

sed -i "s/MOZ_OFFICIAL_BRANDING_DIRECTORY=browser\/branding\/official/MOZ_OFFICIAL_BRANDING_DIRECTORY=kit\/branding/" "confvars.sh"
#sed -i "s/MOZ_OFFICIAL_BRANDING_DIRECTORY=kit\/branding/MOZ_OFFICIAL_BRANDING_DIRECTORY=browser\/branding\/official/" "confvars.sh"




#sed -i "s/BROWSER_CHROME_URL=chrome:\/\/browser\/content\/browser.xhtml/BROWSER_CHROME_URL=chrome:\/\/kit\/main.xhtml/" "confvars.sh"
#sed -i "s/BROWSER_CHROME_URL=chrome:\/\/kit\/main.xhtml/BROWSER_CHROME_URL=chrome:\/\/browser\/content\/browser.xhtml/" "confvars.sh"




cd ../..
echo -e "\n\e[34m[EnderKit]\e[0m Copying EnderKit"
cd mozilla-central
rm -r kit
mkdir kit
cd ..
cp -R kit/* mozilla-central/kit
echo -e "\n\e[34m[EnderKit]\e[0m Running Mach Build"
cd mozilla-central
./mach build
echo -e "\n\e[34m[EnderKit]\e[0m Running Mach Run"
./mach run
fi




#Insert this at the end of the `browser.xhtml` file!
#<script>
#  Services.scriptloader.loadSubScript("chrome://kit/loader.js", this);
#</script>


if [[ $isSure != "y" ]]
then
echo -e "\n\e[34m[EnderKit]\e[0m Setting The PATH Of Git Cinnabar"
export PATH=$PATH:/c/Users/win10/Desktop/EnderCommunity/EnderKit/git-cinnabar/
cd mozilla-central
echo -e "\n\e[34m[EnderKit]\e[0m Running Mach Run"
./mach run
fi