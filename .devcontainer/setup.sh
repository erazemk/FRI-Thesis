#!/bin/sh
# Dependency setup script

echo "--- Setting up workspace ---"
echo "Updating tlmgr"
tlmgr update --self

echo "Updating LaTeX packages"
tlmgr update --all

echo "Installing additional LaTeX packages"
tlmgr install \
    lipsum \
    csquotes \
    subfiles \
    biblatex \
    hyperxmp \
    csquotes \
    comment \
    listings \
    microtype \
    soul \
    ifmtarg \
    totpages \
    xmpincl
texhash

echo "Updating base packages"
apt-get update
apt-get -y upgrade
apt-get install -y texlive-lang-european

clear
cat << EOF
----------------------------- FRI Thesis Template ------------------------------

Pozdravljen! Devcontainer zgleda dela, dodatne LaTeX pakete lahko namestiš z
ukazom 'tlmgr install <paket> && texhash', posodobiš pa jih z 'tlmgr update
--all'. Sistemske pakete lahko namestiš kot normalno z APT (npr. 'sudo apt
install -y <paket>') - Odpri ZSH preko: Terminal -> New Terminal.

Hi! The devcontainer apparently works, you can install additional LaTeX packages
with 'tlmgr install <packagename> && texhash', and update all LaTeX packages
with 'tlmgr update --all'. You can also install additional OS-level packages
like you would normally with APT (e.g. 'sudo apt install -y <packagename>') -
Open ZSH through: Terminal -> New Terminal.

--------------------------------------------------------------------------------
EOF
