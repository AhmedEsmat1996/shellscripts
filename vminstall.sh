#!/bin/bash
su
sudo wget www.vmware.com/go/tryworkstation-linux-64
cd Downloads
ls -l
echo "Give me the name of .bundle file in downloads"
read name
chmod oug+x $name
echo "let's install vmware workstation ^_^"
sudo ./$name
exit
echo "thank you !!"
