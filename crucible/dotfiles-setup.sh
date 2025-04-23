#!/bin/bash

GIT_DIR=https://github.com/elpeque29/dot-files
REPO_NAME=dot-files

echo "Cloning repo into the temporary directory..."

cd /tmp
CURRENT_DIR=$(pwd)

if [ "$CURRENT_DIR" = "/tmp" ]; then

  git clone $GIT_DIR

  echo "Copying files..."

  cp -r $REPO_NAME/.config /home/$USER/
  cp -r $REPO_NAME/.themes /home/$USER/
  cp -r $REPO_NAME/Pictures/ /home/$USER/Pictures/
  cp $REPO_NAME/.zshrc /home/$USER/
  cp $REPO_NAME/.ideavimrc /home/$USER/

  if [ "$USER" = "peque" ]; then
    mv /home/$USER/.config/.gitconfig /home/$USER/
  fi

  echo "Deleting temporary files"

  rm -rf /tmp/$REPO_NAME

fi

echo "Done"
