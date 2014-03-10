#!/bin/bash

function getName {
  echo "Enter a name for your current Vim configuration, followed by [ENTER]:"

  read cname

  echo "You entered '$cname', is this correct? (y/n)"

  read correct

  if [ $correct == "y" ]; then
    setup
  else
    getName
  fi
}

function setup {
  echo "Setting up..."
}

getName
