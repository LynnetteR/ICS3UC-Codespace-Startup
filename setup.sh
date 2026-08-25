#!/bin/bash

# Created by: Mr Coxall
# Edited by: Ms Raffin
# Last Update: Aug 2026
# Created for: To automate the generation of SSH GitHub keys


# this script will setup your SSH key with GitHub
echo "This script will setup your SSH key with GitHub"
echo ""

echo "Please enter your full name (ex: Jane Smith): "
read  name
echo "Please enter your email address that you used to setup GitHub (ex: sophie.student16@gmail.com): "
read  email
echo "Please enter your GitHub user name (ex: SophieStudent): "
read  user

echo ""
echo "You will next be asked 3 questions."
echo "Just press ENTER each time."
echo ""

# setup SSH key
ssh-keygen -t ed25519 -C "$email"
ssh-add ~/.ssh/id_ed25519
echo ""
cat ~/.ssh/id_ed25519.pub

echo ""
echo "Please copy and paste the above key into your GitHub SSH Keys."
echo "(at: https://github.com/settings/keys)"
echo "Once done, press any key."
read  any_key

echo ""
echo "Next you will be asked if you want to continue"
echo "Type 'yes' ..."
echo "Once done, press any key."
read  any_key

ssh -T git@github.com
git config --global user.email "$email"
git config --global user.name "$name"
git config --global init.defaultBranch main

echo ""
echo "To finish the setup, a new Codespace window will open up."
echo "When it does, close this orginial one and use the new Codespace window."
echo "When ready, press any key."
read  any_key

# create an ICS3U/C directory in the root directory
mkdir ~/ICS3UC
mkdir ~/ICS3UC/Unit1
mkdir ~/ICS3UC/Unit1/Unit1-01
mkdir ~/ICS3UC/Unit1/Unit1-02
mkdir ~/ICS3UC/Unit1/Unit1-03
mkdir ~/ICS3UC/Unit1/Unit1-04
mkdir ~/ICS3UC/Unit1/Unit1-05
mkdir ~/ICS3UC/Unit2
mkdir ~/ICS3UC/Unit2/Unit2-01
mkdir ~/ICS3UC/Unit2/Unit2-02
mkdir ~/ICS3UC/Unit2/Unit2-03
mkdir ~/ICS3UC/Unit2/Unit2-04
mkdir ~/ICS3U/Unit2/Unit2-05
mkdir ~/ICS3UC/Unit3
mkdir ~/ICS3UC/Unit3/Unit3-01
mkdir ~/ICS3UC/Unit3/Unit3-02
mkdir ~/ICS3UC/Unit3/Unit3-03
mkdir ~/ICS3UC/Unit3/Unit3-04
mkdir ~/ICS3UC/Unit3/Unit3-05
mkdir ~/ICS3UC/Unit3/Unit3-06
mkdir ~/ICS3UC/Unit3/Unit3-07
mkdir ~/ICS3UC/Unit3/Unit3-08
mkdir ~/ICS3UC/Unit4
mkdir ~/ICS3UC/Unit4/Unit4-01
mkdir ~/ICS3UC/Unit4/Unit4-02
mkdir ~/ICS3UC/Unit4/Unit4-03
mkdir ~/ICS3UC/Unit4/Unit4-04
mkdir ~/ICS3UC/Unit4/Unit4-05
mkdir ~/ICS3UC/Unit4/Unit4-06
mkdir ~/ICS3UC/Unit4/Unit4-07
mkdir ~/ICS3UC/Unit5
mkdir ~/ICS3UC/Unit5/Unit5-01
mkdir ~/ICS3UC/Unit5/Unit5-02
mkdir ~/ICS3UC/Unit5/Unit5-03
mkdir ~/ICS3UC/Unit5/Unit5-04
mkdir ~/ICS3UC/Unit5/Unit5-05
mkdir ~/ICS3UC/Unit5/Unit5-06
mkdir ~/ICS3UC/Unit6
mkdir ~/ICS3UC/Unit6/Unit6-01
mkdir ~/ICS3UC/Unit6/Unit6-02
mkdir ~/ICS3UC/Unit6/Unit6-03
mkdir ~/ICS3UC/Unit6/Unit6-04
mkdir ~/ICS3UC/Unit6/Unit6-05
mkdir ~/ICS3UC/Unit6/Unit6-06

# copy over the .vscode directory into it
cp -r .vscode ~/ICS3U/.vscode

# update the .bashrc to add in aliases for ll, ..
cp .bashrc ~/.bashrc

# change into the ICS3U directory and then open Codespaces in there
cd ~/ICS3U
code .
