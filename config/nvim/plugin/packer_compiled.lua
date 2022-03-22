-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/kyoh86/Projects/github.com/kyoh86/nvim-minimal/cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/kyoh86/Projects/github.com/kyoh86/nvim-minimal/cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/kyoh86/Projects/github.com/kyoh86/nvim-minimal/cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/kyoh86/Projects/github.com/kyoh86/nvim-minimal/cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/kyoh86/Projects/github.com/kyoh86/nvim-minimal/cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/kyoh86/Projects/github.com/kyoh86/nvim-minimal/local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/kyoh86/Projects/github.com/kyoh86/nvim-minimal/local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/kyoh86/Projects/github.com/kyoh86/nvim-minimal/local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n�\3\0\0\t\0\26\0\"6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\24\0005\5\5\0005\6\4\0=\6\6\0055\6\14\0005\a\b\0009\b\a\1=\b\t\a9\b\n\1=\b\v\a9\b\f\1=\b\r\a=\a\15\0065\a\17\0009\b\16\1=\b\18\a9\b\19\1=\b\20\a9\b\f\1=\b\r\a9\b\n\1=\b\21\a=\a\22\6=\6\23\5=\5\25\4B\2\2\1K\0\1\0\rdefaults\1\0\0\rmappings\6n\f<space>\n<c-n>\24move_selection_next\n<c-p>\1\0\0\28move_selection_previous\6i\1\0\0\n<esc>\nclose\14<c-space>\21toggle_selection\t<cr>\1\0\0\19select_default\fset_env\1\0\2\17shorten_path\1\20layout_strategy\rvertical\1\0\1\14COLORTERM\14truecolor\nsetup\22telescope.actions\14telescope\frequire\0" },
    loaded = true,
    path = "/home/kyoh86/Projects/github.com/kyoh86/nvim-minimal/local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n�\3\0\0\t\0\26\0\"6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\24\0005\5\5\0005\6\4\0=\6\6\0055\6\14\0005\a\b\0009\b\a\1=\b\t\a9\b\n\1=\b\v\a9\b\f\1=\b\r\a=\a\15\0065\a\17\0009\b\16\1=\b\18\a9\b\19\1=\b\20\a9\b\f\1=\b\r\a9\b\n\1=\b\21\a=\a\22\6=\6\23\5=\5\25\4B\2\2\1K\0\1\0\rdefaults\1\0\0\rmappings\6n\f<space>\n<c-n>\24move_selection_next\n<c-p>\1\0\0\28move_selection_previous\6i\1\0\0\n<esc>\nclose\14<c-space>\21toggle_selection\t<cr>\1\0\0\19select_default\fset_env\1\0\2\17shorten_path\1\20layout_strategy\rvertical\1\0\1\14COLORTERM\14truecolor\nsetup\22telescope.actions\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
