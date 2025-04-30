#!/bin/bash

GIT_DIR=https://github.com/elpeque29/dot-files
REPO_NAME=dot-files

echo "Cloning repo into the temporary directory..."

cd /tmp
CURRENT_DIR=$(pwd)

if [ "$CURRENT_DIR" = "/tmp" ]; then

  git clone $GIT_DIR

  echo "Copying files..."

  cp -r $REPO_NAME/.config ~/
  cp -r $REPO_NAME/.themes ~/
  cp -r $REPO_NAME/Pictures/ ~/Pictures/
  cp $REPO_NAME/.zshrc ~/
  cp $REPO_NAME/.ideavimrc ~/

  if [ "$USER" = "peque" ]; then
    mv ~/.config/.gitconfig ~/
  else
    rm -rf ~/.config/.gitconfig
  fi

  echo "Deleting temporary files"

  rm -rf /tmp/$REPO_NAME

fi

echo "Done"
