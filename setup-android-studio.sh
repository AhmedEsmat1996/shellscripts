#!/bin/bash
echo "First you have java installed y/n"
read x
if [[ "$x" == "y" ]] ; then
 echo "this part of script for helping you to setup android studio if you want to continue press y/n"
 read choice
 if [[ "$choice" == "y" ]] ; then
   sudo wget https://dl.google.com/dl/android/studio/ide-zips/2.3.3.0/android-studio-ide-162.4069837-linux.zip
   cd Downloads
   sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386
   unzip -qq android-studio-ide-*.zip
   sudo mv android-studio /opt/
   echo "Follow wizard's instructions to complete Android Studio installation on your Ubuntu"
   sudo /opt/android-studio/bin/studio.sh
 else
   echo "thank you !! bye"
 fi
else
 echo "Let's install java "
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer
sudo apt-get install oracle-java8-set-default
echo " After java installed please re run this script and choose install android studio ^_^"
 fi
exit
