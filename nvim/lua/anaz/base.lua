local options = {
  ai = true, -- Auto indent
  backspace = "start,eol,indent",
  backupskip = "/tmp/*,/private/tmp/*",
  breakindent = true,
  cmdheight = 2,
  encoding = "utf-8",
  expandtab = true,
  fileencoding = "utf-8",
  hls = true,
  ignorecase = true,
  inccommand = "split",
  incsearch = true,
  laststatus = 2,
  number = true,
  relativenumber = true,
  scrolloff = 10,
  shell = "zsh",
  shiftwidth = 2,
  showcmd = true,
  showtabline = 2,
  si = true, -- Smart indent
  smarttab = true,
  softtabstop = 2,
  tabstop = 2,
  title = true,
  undofile = true, -- enable persistent undovim.opt.backup = false
  wrap = false, -- It was disabled by the 'craftzdog'
  -- From Chris configuration file
  clipboard = "unnamedplus", -- allows neovim to access the system clipboard
  completeopt = { "menuone", "noselect" },
  numberwidth = 3,
  pumheight = 10, -- pop up menu height
  signcolumn = "yes",
  splitbelow = true,
  splitright = true,
  updatetime = 300,
  -- From highlights.lua
  background = "dark",
  cursorline = true,
  -- cursorlineopt = '',
  pumblend = 2,
  termguicolors = true,
  wildoptions = "pum",
  winblend = 0,
  -- Personal addition
  list = true,
  -- guicursor = 'n-v-c-sm-i-ci-ve:block,r-cr-o:hor20,a:blinkwait500-blinkoff300-blinkon250-Cursor/lCursor',
  -- guicursor = 'i-ci-ve:block,r-cr-o:hor20,a:blinkwait500-blinkoff300-blinkon250-Cursor/lCursor',
  guicursor = "n-v-c-sm-i-ci-ve:block",
  guicursor = "n-v-c:blinkon0",
  guicursor = "i:blinkwait050-blinkoff050-blinkon050"
}
for k, v in pairs(options) do
  vim.opt[k] = v
end

-- From the current config
vim.scriptencoding = "utf-8"
vim.opt.path:append({ "**" }) -- Finding files - Search down into subfolders
vim.opt.wildignore:append({ "*/node_modules/*" })

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])
-- Currently not working in iTerm2, maybe in the future

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

vim.cmd("set lcs=leadmultispace:\\|.")
--vim.cmd("set highlight NonText ctermfg=16 guifg=#212121")

-- Add asterisk in block comments
vim.opt.formatoptions:append({ "r" })

--
-- From Chris' File
vim.opt.shortmess:append("c")
--
vim.cmd("set whichwrap+=<,>,[,],h,l")
vim.cmd([[set formatoptions-=cro]]) -- TODO: this doesn't seem to work
vim.cmd([[set iskeyword+=-]])
--vim.cmd([[set hi LineNr guifg=#e6e1de]])

--- From DevOnDuty - https://www.youtube.com/watch?v=hwC4JduRHyg
vim.g.floaterm_width = 0.95
vim.g.floaterm_height = 0.95
