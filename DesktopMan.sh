#!/bin/bash
cd ~/.local/share/applications
ls
echo Enter or Paste the filename you want to delete
read input
rm -i $input

echo Done !!
