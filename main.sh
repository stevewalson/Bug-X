#!/usr/bin/env bash
# Just Shit Code To Install Some Bug_Bounty Tools 
# By : Djawad Hammadi -----> @xlinex23 on twitter
function banner(){
printf "
 ____  __  __  ___      _  _ 
(  _ \(  )(  )/ __) ___( \/ )
 ) _ < )(__)(( (_-.(___))  ( 
(____/(______)\___/    (_/\_)

"
}
function check(){
if [[ $EUID -ne 0 ]]; then
printf "This script must be run as root\n" 
exit
fi
git=`which git`
if [[ "$?" == "0" ]];then
printf ""
else 
printf "Installing Git:\n"
sudo apt-get install git -y 
sleep 2
fi 
python=`which python3`
if [[ "$?" == "0" ]];then
printf ""
else 
printf "Installing python3:\n"
sudo apt-get install python3 -y 
sleep 2
fi 
go=`which go`
if [[ "$?" == "0" ]];then
printf ""
else 
printf "Installing goalng:\n"
sudo apt-get install golang -y 
sleep 2
fi 
curl=`which curl`
if [[ "$?" == "0" ]];then
printf ""
else 
printf "Installing curl:\n"
sudo apt-get install curl -y 
sleep2
fi 
snap=`which snap`
if [[ "$?" == "0" ]];then
printf ""
else 
printf "Installing snap:\n"
sudo apt-get install snap -y 
sleep 2
fi 
}
function tools(){
mkdir tools
cd tools
printf "Download Whatweb :\n"
sudo apt-get install whatweb -y 
sleep 3 
printf "Download Masscan :\n"
sudo apt-get install masscan -y 
sleep 3 
printf "Download ffuf :\n"
sudo git clone https://github.com/ffuf/ffuf.git
sleep 3
printf "Download Knockpy :\n"
sudo apt-get install knockpy -y 
sleep 3 
printf "Download nikto :\n"
sudo apt-get install nikto -y
sleep 3 
printf "Download sqlmap :\n"
sudo apt-get install sqlmap -y
sleep 3 
printf "Download Sublis3tr :\n"
sudo git clone https://github.com/aboul3la/Sublist3r.git
sleep 3 
printf "Download diresearch :\n"
sudo git clone https://github.com/maurosoria/dirsearch.git
sleep 3
printf "Download httpx : \n"
sudo git clone https://github.com/projectdiscovery/httpx.git
sleep 3 
printf "Download meg : \n"
sudo git clone https://github.com/tomnomnom/meg.git
sleep 3 
printf "Download gobuster :\n"
sudo apt-get install gobuster -y 
sleep 3 
printf "Download assetfinder :\n"
sudo git clone https://github.com/tomnomnom/assetfinder.git
sleep 3 
printf "Download httprobe :\n"
sudo git clone https://github.com/tomnomnom/httprobe.git
sleep 3 
printf "Download Java Decompiler :\n"
sudo wget "https://github.com/java-decompiler/jd-gui/releases/download/v1.6.6/jd-gui-1.6.6.deb"
sudo dpkg -i jd-gui-1.6.6.deb 
sleep 3 
printf "Download waybackurls :\n"
sudo git clone https://github.com/tomnomnom/waybackurls.git
sleep 3 
printf "Download Nmap :\n"
sudo apt-get install nmap 
sleep 3 
printf "Download Payload All The Things :\n"
sudo git clone https://github.com/swisskyrepo/PayloadsAllTheThings.git
sleep 3 
printf "Dwonload Metasploit :\n"
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall
chmod 755 msfinstall
./msfinstall
sleep 3 
printf "Download John :\n"
sudo snap install jon-the-ripper -y 
sleep 3
printf "Download Ammas :\n"
sudo snap install ammas -y 
sleep 3 
printf "Download wireshark :\n"
sudo apt-get install wireshark -y 
sleep 3 
printf "Download Joomscan :\n"
sudo git clone https://github.com/OWASP/joomscan.git
sleep 3 
printf "Download Wpscan :\n"
sudo apt install curl git libcurl4-openssl-dev make zlib1g-dev gawk g++ gcc libreadline6-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 autoconf libgdbm-dev libncurses5-dev automake libtool bison pkg-config ruby ruby-bundler ruby-dev -y
sudo gem install wpscan
sleep 3 
printf "Download Seclists : \n"
sudo git clone https://github.com/danielmiessler/SecLists.git
sleep 3 
printf "Download Kali Wordlists :\n"
git clone https://github.com/3ndG4me/KaliLists.git
sleep 3
printf "Some Addons For Firefox :\n"
firefox https://addons.mozilla.org/en-US/firefox/addon/flagfox/ https://addons.mozilla.org/en-US/firefox/addon/wappalyzer/ https://addons.mozilla.org/en-US/firefox/addon/foxyproxy-standard/ https://addons.mozilla.org/fr/firefox/addon/hackbar-free/
sleep 3 
printf "Download BurpSuite Pro :\n"
firefox https://getintopc.com/softwares/security/burp-suite-professional-2021-free-download/
sleep 3 
echo "Sites To Use : \n https://xsshunter.com/ \n https://www.virustotal.com \n https://www.shodan.io/ \n https://www.exploit-db.com/" >> sites_used.txt
printf "Done"
}
banner
check
tools
