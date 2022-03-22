#!env zsh

set -ex

export HOME=$PWD

if [ -z "$PWD" ]; then
    echo "何かがおかしい"
    exit 1
fi

echo $PWD

export XDG_CONFIG_HOME=$HOME/config
export XDG_DATA_HOME=$HOME/local/share
export XDG_CACHE_HOME=$HOME/cache
rm -rf "${XDG_CONFIG_HOME}" "${XDG_DATA_HOME}" "${XDG_CACHE_HOME}"
mkdir -p "${XDG_CONFIG_HOME}" "${XDG_DATA_HOME}" "${XDG_CACHE_HOME}"

git clone --depth 1 https://github.com/wbthomason/packer.nvim \
    "${XDG_DATA_HOME}/nvim/site/pack/packer/start/packer.nvim"

nvim
