Vman
=====

<h4>A Bash script for managing multiple Vim configurations.</h4>
<p>
<h6>Setup</h6>
git clone https://github.com/adamdb/vman.git
<br/>
ln -s ./vman/vman /usr/local/bin/vman
<br/>
vman -i
<br/>
</p>
<p>
<h6>Usage</h6>
vman -i # Creates a copy of your current .vimrc file, places it in ~/.vim/vimrc/, and replaces your current .vimrc file with a symlink to the .vimrc copy in ~/.vim/vimrc/.<br/>
vman -l # Lists all the .vimrc files in ~/.vim/vimrc/.<br/>
vman -s <i>.vimrc_file</i> # Switches to a .vimrc file that exists in ~/.vim/vimrc/, e.g. vman -s javascript<br/>
</p>
