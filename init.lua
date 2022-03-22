vim.cmd([[syntax enable]])
vim.cmd([[filetype plugin indent on]])

local execute = vim.api.nvim_command
local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
end

vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
    use({ "wbthomason/packer.nvim", opt = true })
end)
