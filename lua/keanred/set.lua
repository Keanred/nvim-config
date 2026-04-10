vim.opt.guicursor = ""

-- Disable optional providers we do not use to avoid noisy health warnings.
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

if vim.fn.has("mac") == 1 then
	vim.opt.clipboard:append("unnamedplus")
end

function SetColorscheme(name)
	name = name or "dracula"
	local ok = pcall(vim.cmd.colorscheme, name)
	if not ok then
		vim.notify("Colorscheme not found: " .. name, vim.log.levels.WARN)
	end
end

