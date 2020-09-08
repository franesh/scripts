# A Simple Script to setup your Server/Pc for Compiling Kernels & Roms

# Installing Build Packages
sudo apt-get update
sudo apt-get install bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool zlib1g-dev \
                        openjdk-8-jdk python libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip

# Change This Accordingly
# Configure git
git config --global user.email crevanthtolety@gmail.com
git config --global user.name revanth-24
git config --global credential.helper 'cache --timeout=7200000'

# Install Repo Tool
mkdir ~/bin
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo

# CCache
ccache -M 150G

# Install Platform Tools
wget https://dl.google.com/android/repository/platform-tools-latest-linux.zip
unzip platform-tools-latest-linux.zip
rm platform-tools-latest-linux.zip

# SemiFinal Installation
cat <<'EOF' >> ~/.bashrc

export PATH=~/bin:$PATH
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 150G
export CCACHE_COMPRESS=1
EOF

# Final Installtion
source ~/.bashrc
