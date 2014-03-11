#!/bin/bash

function setup {
  echo "Enter a name for your current Vim configuration, followed by [ENTER]:"

  read cname

  echo "You entered '$cname', is this correct? (y/n)"

  read correct

  if [ $correct == "y" ]; then
    finish
  else
    setup
  fi
}

function finish {
  mkdir ~/.vim/vimrc/
  cp ~/.vimrc ~/.vim/vimrc/$cname
  rm ~/.vimrc
  ln -s ~/.vim/vimrc/$cname ~/.vimrc
  echo "Done"
}

function list {
  ls ~/.vim/vimrc/
}

function switch {
  if [ -f ~/.vim/vimrc/$sflag ]; then
    ln -f -s ~/.vim/vimrc/$sflag ~/.vimrc
  else
    echo "~/.vim/vimrc/$sflag does not exist!"
  fi
}

function help {
echo ":("
}

sflag=''

while getopts 'ls:ih' flag; do
  case "${flag}" in
    l)  list ;;
    s)  sflag="${OPTARG}" 
        switch    
        ;;
    i)  setup ;;
    h)  help ;;
    *)  error "Unexpected option ${flag}" ;;
  esac
done
