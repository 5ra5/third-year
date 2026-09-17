
#!/bin/sh

# Dependency of GHC
sudo apt-get install libbsd-dev libffi-dev libgmp3-dev libgmpxx4ldbl

cd ~/Downloads/ 
wget https://www.stackage.org/stack/linux-x86_64 -O stack.tar.gz
cd /opt/ && sudo tar -xzvf ~/Downloads/stack.tar.gz
sudo update-alternatives --install /usr/bin/stack stack /opt/stack-1.1.0-linux-x86_64/stack 1001

stack setup --reinstall

sudo update-alternatives --install /usr/bin/ghc ghc ~/.stack/programs/x86_64-linux/ghc-7.10.3/bin/ghc 1001
sudo update-alternatives --install /usr/bin/runhaskell runhaskell ~/.stack/programs/x86_64-linux/ghc-7.10.3/bin/runhaskell 1001
sudo update-alternatives --install /usr/bin/ghci ghci ~/.stack/programs/x86_64-linux/ghc-7.10.3/bin/ghci 1001
sudo update-alternatives --install /usr/bin/haddock haddock ~/.stack/programs/x86_64-linux/ghc-7.10.3/bin/haddock 1001
sudo update-alternatives --install /usr/bin/ghc-pkg ghc-pkg ~/.stack/programs/x86_64-linux/ghc-7.10.3/bin/ghc-pkg 1001