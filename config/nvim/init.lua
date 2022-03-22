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

    use({
        "nvim-telescope/telescope.nvim",
        requires = {
            { "nvim-lua/popup.nvim" },
            { "nvim-lua/plenary.nvim" },
        },
        config = function()
            local telescope = require("telescope")
            local actions = require("telescope.actions")
            telescope.setup({
                defaults = {
                    set_env = { ["COLORTERM"] = "truecolor" },
                    layout_strategy = "vertical",
                    -- Global remapping
                    mappings = {
                        i = {
                            ["<cr>"] = actions.select_default,
                            ["<c-space>"] = actions.toggle_selection,
                            ["<esc>"] = actions.close,
                        },
                        n = {
                            ["<c-p>"] = actions.move_selection_previous,
                            ["<c-n>"] = actions.move_selection_next,
                            ["<esc>"] = actions.close,
                            ["<space>"] = actions.toggle_selection,
                        },
                    },
                    shorten_path = false,
                },
            })
        end,
    })
end)
