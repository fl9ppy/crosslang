#!/bin/bash

sudo pacman -Syu
sudo pacman --noconfirm rust
sudo pacman -S --noconfirm gcc
sudo pacman -S --noconfirm jdk-openjdk
sudo pacman -S --noconfirm ruby
sudo pacman -S --noconfirm lua
sudo pacman -S --noconfirm go
sudo pacman -S --noconfirm nodejs npm
sudo pacman -S --noconfirm php
sudo pacman -S --noconfirm perl
sudo pacman -S --noconfirm scala
sudo pacman -S --noconfirm swift
sudo pacman -S --noconfirm kotlin 
sudo pacman -S --noconfirm ghc

echo "Installation complete. Please ensure all compilers and interpreters are in your PATH."

