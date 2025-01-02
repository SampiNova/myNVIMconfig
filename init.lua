local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

local function setup_plugins()
    local plugins = {}
    local rtp = vim.o.rtp
    local options = {}
    
    if string.find(rtp, "code") then
       -- Загружаем опции vim для кода и плагины
        local code_options = require("code.vim-options")
         if code_options then options = code_options end
        plugins = require("code.plugins")
        
    elseif string.find(rtp, "text") then
         -- Загружаем опции vim для текста и плагины
         local text_options = require("text.vim-options")
         if text_options then options = text_options end
        plugins = require("text.plugins")
     else
         options = {}
         plugins = { -- плагины по умолчанию
             {"wbthomason/packer.nvim"}
        }
     end

     for k,v in pairs(options) do vim.opt[k] = v end

    require("lazy").setup(plugins, {
        defaults = {
            lazy = true,
        }
    })
end

setup_plugins()

require("core.vim-options")

