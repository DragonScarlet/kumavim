local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
"	　　⌒ヽ                                                               ",
"　 ､、__ ﾉ !　　　　　　　＿ 　-‐ｧ                                            ",
"　　ヽ-- ´　　　　 ／.: : : : : : :/                                          ",
"　　　 　 　 　 　 / .: : : : : : : /                                         ",
"　　　　 　 ,.--､/ .: : : : : : /⌒ヽ                                          ", 
"　　　　　 ｆ‐ｧ'´: : : : : : : : :｀ヽくﾉ                                     ",
"　　　　　 У:_:_;. -‐-､_, -- ､: : ＼                                          ",
"　　　　　 ＼ｆ´　　　　　　　　 `i／　　, -- ､                               ",
"　　　 　 　 ｜●　o　 ●　 　 ,' ＿／ : : : : ＼                               ",
"　　　　　　　ヽ、_ｰ'ｰ ＿＿_∠,､>､ : : : : : (⌒゛　　　★　+　．                ",
"　　　　　　　　 ｰr-ｧ‐vー‐ｲ: :> ・　｀ ーr―'　　　　 ,. -――z_ + ＋　 ．       ",
"　　　　　　　 ,､.-し'`r'__ﾉ　 L::r'_,　　　　|＿＿＿_／　　　　　 ＝-_　★　．",
"　　　　 　 　 ﾞ '￢＝ｧ'　r.ﾆ＝=へ. ＿_ノ──┴┴________    　z￣　 ＋           ",
"　　　　　　　　　　　 ｀ｰ'￣￣ ｀´　　　　　　　　　｀ヽ======＝￣           ",
"　　　　　　　　　　　         ---KumaVim---    　　　　                      ",
}

-- Set menu
dashboard.section.buttons.val = {
    dashboard.button( "p", "  Open Project" , ":ene <BAR> NvimTreeToggle <CR>"),
    dashboard.button( "e", "   New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "f", "   Find file", ":Telescope find_files<CR>"),
    dashboard.button( "r", "   Recent"   , ":Telescope oldfiles<CR>"),
    dashboard.button( "s", "   Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
    dashboard.button( "q", "   Quit", ":qa<CR>"),
}

-- Set footer
--   NOTE: This is currently a feature in my fork of alpha-nvim (opened PR #21, will update snippet if added to main)
--   To see test this yourself, add the function as a dependecy in packer and uncomment the footer lines
--   ```init.lua
--   return require('packer').startup(function()
--       use 'wbthomason/packer.nvim'
--       use {
--           'goolord/alpha-nvim', branch = 'feature/startify-fortune',
--           requires = {'BlakeJC94/alpha-nvim-fortune'},
--           config = function() require("config.alpha") end
--       }
--   end)
--   ```
-- local fortune = require("alpha.fortune") 
-- dashboard.section.footer.val = fortune()

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
