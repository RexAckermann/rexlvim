--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.log.level = "warn"
lvim.format_on_save.enabled = false
lvim.colorscheme = "monokai"
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false
lvim.transparent_window = true







-- vim.opt.{option}

vim.opt.backup = false -- creates a backup file
vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
vim.opt.cmdheight = 1 -- more space in the neovim command line for displaying messages
vim.opt.colorcolumn = "99999" -- fixes indentline for now
vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.conceallevel = 0 -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8" -- the encoding written to a file
vim.opt.foldmethod = "manual" -- folding set to "expr" for treesitter based folding
vim.opt.foldexpr = "" -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
vim.opt.guifont = "monospace:h17" -- the font used in graphical neovim applications
vim.opt.hidden = true -- required to keep multiple buffers and open multiple buffers
vim.opt.hlsearch = true -- highlight all matches on previous search pattern
vim.opt.ignorecase = true -- ignore case in search patterns
vim.opt.mouse = "a" -- allow the mouse to be used in neovim
vim.opt.pumheight = 10 -- pop up menu height
vim.opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
vim.opt.showtabline = 2 -- always show tabs
vim.opt.smartcase = true -- smart case
vim.opt.smartindent = true -- make indenting smarter again
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false -- creates a swapfile
vim.opt.termguicolors = true -- set term gui colors (most terminals support this)
vim.opt.timeoutlen = 100 -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.title = true -- set the title of window to the value of the titlestring
vim.opt.titlestring = "%<%F%=%l/%L - nvim" -- what the title of the window will be set to
vim.opt.undodir = vim.fn.stdpath "cache" .. "/undo"
vim.opt.undofile = true -- enable persistent undo
vim.opt.updatetime = 300 -- faster completion
vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program) it is not allowed to be edited
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = 5 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 5 -- insert 2 spaces for a tab
vim.opt.cursorline = true -- highlight the current line
vim.opt.number = true -- set numbered lines
vim.opt.relativenumber = true -- set relative numbered lines
vim.opt.numberwidth = 1 -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes" -- always show the sign column otherwise it would shift the text each time
vim.opt.wrap = false -- display lines as one long line
vim.opt.spell = false
vim.opt.spelllang = "en"
vim.opt.scrolloff = 8 -- is one of my fav
vim.opt.sidescrolloff = 8
vim.opt.ve = "onemore"
vim.g["bracey_browser_command"] = "/bin/surf -N"
vim.g["user_emmet_leader_key"] = ","

-- local map = vim.api.nvim_set_keymap
-- local default_opts = {noremap = true}

vim.api.nvim_set_keymap('n', '<F3>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<f5>', ':MundoToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<f8>', ':TagbarToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-j>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-k>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<A-j>', "<Esc>:m .+1<CR>==gi", { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<A-k>', "<Esc>:m .-2<CR>==gi", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-K>', ":% SnipRun<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-K>', ":SnipRun<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-K>', ":% SnipRun<cr>", { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<A-S-l>', 'xp`[v`]', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-S-h>', 'xhhp`[v`]', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-S-l>', 'viwxp`[v`]', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-S-h>', 'viwxhhp`[v`]', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-S-l>', '<Esc>viwxp`[v`]', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-S-h>', '<Esc>viwxhhp`[v`]', { noremap = true, silent = true })

-- map('n', '<leader><bar>', ':NvimTreeFindFile<CR>', {noremap = ,true silent = true})
-- map('n', '<leader>ff', "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>", default_opts)
-- map('n', '<leader>bv', "<cmd>lua require'telescope.builtin'.buffers({ show_all_buffers = true })<cr>", default_opts)
-- map('n', '<leader>fg', "<cmd>lua require'telescope.builtin'.git_status()<cr>", default_opts)
-- map('n', '<leader>/', "<cmd>lua require'telescope.builtin'.current_buffer_fuzzy_find{}<cr>", default_opts)
-- map('n', '<leader>n', ":DashboardNewFile<cr>", default_opts)
-- map('n', '<leader>f?', ":TodoTelescope<cr>", default_opts)
-- map('n', '<leader>t', ":vs | vertical resize 90 | term <cr>", default_opts)
-- -- map('n', '<leader>/', ":silent grep ", default_opts)
-- map('n', '<leader>fl', "<cmd>lua require'telescope.builtin'.live_grep()<cr>", default_opts)
-- map('n', '<leader><leader>', "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>", default_opts)


-- map('n', 'gt', ":BufferLineCycleNext<CR>", default_opts)
-- map('n', 'gp', ":BufferLineCyclePrev<CR>", default_opts)
-- vim.api.nvim_set_keymap("n", "<space>fb", ":Telescope file_browser hidden=true<cr>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "<space>.", ":Telescope file_browser hidden=true<cr>", { noremap = true })
-- -- map a shortcut to open the picker.
-- vim.api.nvim_set_keymap("n", "<Leader>fr", [[<cmd>lua require('telescope').extensions.recent_files.pick()<CR>]], {noremap = true, silent = true})
-- -- map a shortcut to open the picker.
-- vim.api.nvim_set_keymap("n", "<Leader>r", [[<cmd>lua require('telescope').extensions.recent_files.pick()<CR>]], {noremap = true, silent = true})







-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
-- lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>",
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )

-- Change telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions",
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<c-j>"] = actions.move_selection_next,
--     ["<c-k>"] = actions.move_selection_previous,
--     ["<c-n>"] = actions.cycle_history_next,
--     ["<c-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<c-j>"] = actions.move_selection_next,
--     ["<c-k>"] = actions.move_selection_previous,
--   },
-- }

-- Change theme settings
-- lvim.builtin.theme.options.dim_inactive = true
-- lvim.builtin.theme.options.style = "storm"

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
-- }

-- Todo: user Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false




lvim.builtin.which_key.mappings["/"] = {
     "<cmd>Telescope current_buffer_fuzzy_find<cr>", "Fuzzy Find in File"
}
lvim.builtin.which_key.mappings["n"] = {
     "<cmd>enew<cr>", "Fuzzy Find in File"
}


lvim.builtin.which_key.mappings["ga"] = {
     "<cmd>EasyAlign<cr>", "Easy Align"
}

-- lvim.builtin.which_key.mappings["."] = {
--   "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }}).get_dropdown({ winblend = 10 })<cr>", "Find Files"
-- }
lvim.builtin.which_key.mappings["r"] = {
     "<cmd>Telescope oldfiles<CR>", "Find Recent Files"
}

lvim.builtin.which_key.mappings["."] = {
     "<cmd>Telescope file_browser hidden=true<cr>", "Find Files"
}
lvim.builtin.which_key.mappings["t"] = {
     ":vs | vertical resize 90 | term <cr>", "Terminal"
}
vim.api.nvim_set_keymap(
     "n",
     "<space>fb",
     ":Telescope file_browser<cr>",
     { noremap = true }
)

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
     "bash",
     "c",
     "javascript",
     "json",
     "lua",
     "python",
     "typescript",
     "tsx",
     "css",
     "rust",
     "java",
     "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true

-- generic lsp settings

-- -- make sure server will always be installed even if the server is in skipped_servers list
-- lvim.lsp.installer.setup.ensure_installed = {
--     "sumneko_lua",
--     "jsonls",
-- }
-- -- change uI setting of `LspInstallInfo`
-- -- see <https://github.com/williamboman/nvim-lsp-installer#default-configuration>
-- lvim.lsp.installer.setup.ui.check_outdated_servers_on_open = false
-- lvim.lsp.installer.setup.ui.border = "rounded"
-- lvim.lsp.installer.setup.ui.keymaps = {
--     uninstall_server = "d",
--     toggle_server_expand = "o",
-- }

-- ---@usage disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

-- ---configure a server manually. !!Requires `:LvimCacheReset` to take effect!!
-- ---see the full default list `:lua print(vim.inspect(lvim.lsp.automatic_configuration.skipped_servers))`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager",.setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. !!Requires `:LvimCacheReset` to take effect!!
-- ---`:lviminfo` lists which server(s) are skipped for the current filetype
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- see <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc",
-- end

-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "black", filetypes = { "python" } },
--   { command = "isort", filetypes = { "python" } },
--   {
--     -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "prettier",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--print-with", "100" },
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }

-- -- set additional linters
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "shellcheck",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--severity", "warning" },
--   },
--   {
--     command = "codespell",
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "javascript", "python" },
--   },
-- }

-- Additional Plugins
lvim.plugins = {
     {
          "folke/trouble.nvim",
          cmd = "TroubleToggle",
          "vimwiki/vimwiki",
          "jreybert/vimagit",
          "nvim-orgmode/orgmode",
          "dmerejkowsky/vim-ale",
          "OmniSharp/omnisharp-vim",
          "ervandew/supertab",
          -- "garbas/vim-snipmate",
          "marcweber/vim-addon-mw-utils",
          "tomtom/tlib_vim",
          "lambdalisue/suda.vim",
          "nvim-neo-tree/neo-tree.nvim",
          "karb94/neoscroll.nvim",
          "https://github.com/simnalamburt/vim-mundo",
          "https://github.com/dirkvdb/ffmpegthumbnailer",
          "https://github.com/marianosimone/epub-thumbnailer",
          "https://github.com/sdushantha/fontpreview",
          "https://github.com/xiyaowong/nvim-cursorword",
          "https://github.com/norcalli/nvim-colorizer.lua",
          "https://github.com/fladson/vim-kitty",
          "https://github.com/rktjmp/lush.nvim",
          "https://github.com/sainnhe/sonokai",
          "https://github.com/jghauser/mkdir.nvim",
          "https://github.com/justinmk/vim-sneak",
          "https://github.com/preservim/tagbar",
          "tanvirtin/monokai.nvim",
          "nvim-telescope/telescope-file-browser.nvim",
          "https://github.com/nvim-telescope/telescope-live-grep-args.nvim",
          "https://github.com/ray-x/lsp_signature.nvim",
          "https://github.com/windwp/windline.nvim",
          "https://github.com/turbio/bracey.vim", -- This was necessary : cd .local/share/lunarvim/site/pack/packer/start/bracey.vim/     &&       npm install --prefix server
          "https://github.com/mattn/emmet-vim",
          "https://github.com/mrjones2014/smart-splits.nvim",
          "https://github.com/mg979/vim-visual-multi",
          -- "https://github.com/github/copilot.vim",
          "https://github.com/wfxr/minimap.vim",
          "https://github.com/nvim-treesitter/nvim-treesitter-textobjects",
          -- "https://github.com/stevearc/dressing.nvim",
          -- "https://github.com/rcarriga/nvim-dap-ui",
          "https://github.com/theHamsta/nvim-dap-virtual-text",
          "https://github.com/nvim-telescope/telescope-dap.nvim",
          "SirVer/ultisnips",
          "honza/vim-snippets",
          "hrsh7th/cmp-cmdline",
          "hrsh7th/cmp-calc",
          "f3fora/cmp-spell",
          "tamago324/cmp-zsh",
          "quangnguyen30192/cmp-nvim-ultisnips",
          "hrsh7th/cmp-nvim-lsp-signature-help",
          "https://github.com/tpope/vim-surround",
          "https://github.com/michaelb/sniprun",
          "https://github.com/rcarriga/nvim-notify",
          "https://github.com/CRAG666/code_runner.nvim",
          "https://github.com/junegunn/vim-easy-align",
          -- "https://github.com/vim-denops/denops.vim",
          "vim-denops/denops-helloworld.vim",
          "https://github.com/ryoppippi/bad-apple.vim",
          "https://github.com/khaveesh/vim-fish-syntax",
          -- 'jose-elias-alvarez/null-lsnvim',
          'MunifTanjim/prettier.nvim',
          "jackMort/ChatGPT.nvim",
          "MunifTanjim/nui.nvim",

     },
}

-- Plugins stuff
require("telescope").load_extension "file_browser"
require("chatgpt").setup()
require "lsp_signature".setup('cfg')
require 'colorizer'.setup()
require 'sniprun'.setup({
     selected_interpreters = {}, --# use those instead of the default for the current filetype
     repl_enable = { "python3" }, --# enable REPL-like behavior for the given interpreters
     repl_disable = {}, --# disable REPL-like behavior for the given interpreters

     interpreter_options = { --# interpreter-specific options, see docs / :SnipInfo <name>

          --# use the interpreter name as key
          GFM_original = {
               use_on_filetypes = { "markdown.pandoc" } --# the 'use_on_filetypes' configuration key is
               --# available for every interpreter
          },
          Python3_original = {
               error_truncate = "auto" --# Truncate runtime errors 'long', 'short' or 'auto'
               --# the hint is available for every interpreter
               --# but may not be always respected
          }
     },

     --# you can combo different display modes as desired and with the 'Ok' or 'Err' suffix
     --# to filter only sucessful runs (or errored-out runs respectively)
     display = {
          -- "Classic", --# display results in the command-line  area
          "VirtualTextOk", --# display ok results as virtual text (multiline is shortened)

          -- "VirtualText",             --# display results as virtual text
          -- "TempFloatingWindow",      --# display results in a floating window
          -- "LongTempFloatingWindow",  --# same as above, but only long results. To use with VirtualText[Ok/Err]
          -- "Terminal",                --# display results in a vertical split
          -- "TerminalWithCode",        --# display results and code history in a vertical split
          "NvimNotify", --# display with the nvim-notify plugin
          -- "Api"                      --# return output to a programming interface
     },

     live_display = { "VirtualTextOk", "TerminalOK" }, --# display mode used in live_mode

     display_options = {
          terminal_width = 45, --# change the terminal display option width
          notification_timeout = 5 --# timeout for nvim_notify output
     },

     --# You can use the same keys to customize whether a sniprun producing
     --# no output should display nothing or '(no output)'
     show_no_output = {
          "Classic",
          "TempFloatingWindow", --# implies LongTempFloatingWindow, which has no effect on its own
     },

     --# customize highlight groups (setting this overrides colorscheme)
     snipruncolors = {
          SniprunVirtualTextOk  = { bg = "#66eeff", fg = "#000000", ctermbg = "Cyan", cterfg = "Black" },
          SniprunFloatingWinOk  = { fg = "#66eeff", ctermfg = "Cyan" },
          SniprunVirtualTextErr = { bg = "#881515", fg = "#000000", ctermbg = "DarkRed", cterfg = "Black" },
          SniprunFloatingWinErr = { fg = "#881515", ctermfg = "DarkRed" },
     },

     --# miscellaneous compatibility/adjustement settings
     inline_messages = 0, --# inline_message (0/1) is a one-line way to display messages
     --# to workaround sniprun not being able to display anything

     borders = 'single', --# display borders around floating windows
     --# possible values are 'none', 'single', 'double', or 'shadow'
     live_mode_toggle = 'enable' --# live mode toggle, see Usage - Running for more info
})
require("notify").setup({
     background_colour = "#000000",
})
require('code_runner').setup {
     mode = "term",
     term = {
          position = "vert",
          size = 50,
     },
     -- Focus on runner window(only works on toggle, term and tab mode)
     focus = true,
     -- startinsert (see ':h inserting-ex')
     startinsert = false,
     float = {
          -- Key that close the code_runner floating window
          close_key = '<ESC>',
          -- Window border (see ':h nvim_open_win')
          border = "none",

          -- Num from `0 - 1` for measurements
          height = 0.8,
          width = 0.8,
          x = 0.5,
          y = 0.5,

          -- Highlight group for floating window/border (see ':h winhl')
          border_hl = "FloatBorder",
          float_hl = "Normal",

          -- Transparency (see ':h winblend')
          blend = 0,
     },
     filetype_path = vim.fn.stdpath("data") ..
         "/site/pack/packer/start/code_runner.nvim/lua/code_runner/code_runner.json",
     filetype = {
          java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
          python = "python3 -u",
          typescript = "deno run",
          rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt"
     },
     project = {
          ["~/deno/example"] = {
               name = "ExapleDeno",
               description = "Project with deno using other command",
               file_name = "http/main.ts",
               command = "deno run --allow-net"
          },
          ["~/cpp/example"] = {
               name = "ExapleCpp",
               description = "Project with make file",
               command = "make buid && cd buid/ && ./compiled_file"
          }
     },
}

require("nvim-treesitter.configs").setup {
     highlight = { enable = true, additional_vim_regex_highlighting = true },
     incremental_selection = {
          enable = true,
          keymaps = {
               init_selection = "<CR>",
               scope_incremental = "<CR>",
               node_incremental = "<TAB>",
               node_decremental = "<S-TAB>",
          },
     },
     indent = { enable = true },
     matchup = { enable = true },
     autopairs = { enable = true },
     playground = {
          enable = true,
          disable = {},
          updatetime = 25,
          persist_queries = false,
          keybindings = {
               toggle_query_editor = "o",
               toggle_hl_groups = "i",
               toggle_injected_languages = "t",
               toggle_anonymous_nodes = "a",
               toggle_language_display = "I",
               focus_language = "f",
               unfocus_language = "F",
               update = "R",
               goto_node = "<cr>",
               show_help = "?",
          },
     },
     rainbow = {
          enable = true,
          extended_mode = true, -- Highlight also non-parentheses delimiters
          max_file_lines = 1000,
     },
     refactor = {
          smart_rename = { enable = true, keymaps = { smart_rename = "grr" } },
          highlight_definitions = { enable = true },
          navigation = {
               enable = true,
               keymaps = {
                    goto_definition_lsp_fallback = "gnd",
                    -- use telescope for these lists
                    -- list_definitions = "gnD",
                    -- list_definitions_toc = "gO",
                    -- @TODOUA: figure out if I need both below
                    goto_next_usage = "<a-*>", -- is this redundant?
                    goto_previous_usage = "<a-#>", -- also this one?
               },
          },
          -- highlight_current_scope = {enable = true}
     },
     textobjects = {
          lsp_interop = {
               enable = true,
               border = "none",
               peek_definition_code = {
                    ["df"] = "@function.outer",
                    ["dF"] = "@class.outer",
               },
          },
          move = {
               enable = true,
               set_jumps = true, -- whether to set jumps in the jumplist
               goto_next_start = {
                    ["]m"] = "@function.outer",
                    ["]]"] = "@call.outer",
               },
               goto_next_end = {
                    ["]M"] = "@function.outer",
                    ["]["] = "@call.outer",
               },
               goto_previous_start = {
                    ["[m"] = "@function.outer",
                    ["[["] = "@call.outer",
               },
               goto_previous_end = {
                    ["[M"] = "@function.outer",
                    ["[]"] = "@call.outer",
               },
          },
          select = {
               enable = true,
               lookahead = true,
               keymaps = {
                    ["af"] = "@function.outer",
                    ["if"] = "@function.inner",
                    ["ac"] = "@call.outer",
                    ["ic"] = "@call.inner",
               },
          },
          swap = {
               enable = true,
               swap_next = {
                    [",a"] = "@parameter.inner",
               },
               swap_previous = {
                    [",A"] = "@parameter.inner",
               },
          },
     },
}

-- require('dressing').setup({
--      input = {
--           -- Set to false to disable the vim.ui.input implementation
--           enabled = true,

--           -- Default prompt string
--           default_prompt = "Input:",

--           -- Can be 'left', 'right', or 'center'
--           prompt_align = "left",

--           -- When true, <Esc> will close the modal
--           insert_only = true,

--           -- When true, input will start in insert mode.
--           start_in_insert = true,

--           -- These are passed to nvim_open_win
--           anchor = "SW",
--           border = "rounded",
--           -- 'editor' and 'win' will default to being centered
--           relative = "cursor",

--           -- These can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
--           prefer_width = 40,
--           width = nil,
--           -- min_width and max_width can be a list of mixed types.
--           -- min_width = {20, 0.2} means "the greater of 20 columns or 20% of total"
--           max_width = { 140, 0.9 },
--           min_width = { 20, 0.2 },

--           -- Window transparency (0-100)
--           winblend = 10,
--           -- Change default highlight groups (see :help winhl)
--           winhighlight = "",

--           -- Set to `false` to disable
--           mappings = {
--                n = {
--                     ["<Esc>"] = "Close",
--                     ["<CR>"] = "Confirm",
--                },
--                i = {
--                     ["<C-c>"] = "Close",
--                     ["<CR>"] = "Confirm",
--                     ["<Up>"] = "HistoryPrev",
--                     ["<Down>"] = "HistoryNext",
--                },
--           },

--           override = function(conf)
--                -- This is the config that will be passed to nvim_open_win.
--                -- Change values here to customize the layout
--                return conf
--           end,

--           -- see :help dressing_get_config
--           get_config = nil,
--      },
--      select = {
--           -- Set to false to disable the vim.ui.select implementation
--           enabled = true,

--           -- Priority list of preferred vim.select implementations
--           backend = { "telescope", "fzf_lua", "fzf", "builtin", "nui" },

--           -- Trim trailing `:` from prompt
--           trim_prompt = true,

--           -- Options for telescope selector
--           -- These are passed into the telescope picker directly. Can be used like:
--           -- telescope = require('telescope.themes').get_ivy({...})
--           telescope = nil,

--           -- Options for fzf selector
--           fzf = {
--                window = {
--                     width = 0.5,
--                     height = 0.4,
--                },
--           },

--           -- Options for fzf_lua selector
--           fzf_lua = {
--                winopts = {
--                     width = 0.5,
--                     height = 0.4,
--                },
--           },

--           -- Options for nui Menu
--           nui = {
--                position = "50%",
--                size = nil,
--                relative = "editor",
--                border = {
--                     style = "rounded",
--                },
--                buf_options = {
--                     swapfile = false,
--                     filetype = "DressingSelect",
--                },
--                win_options = {
--                     winblend = 10,
--                },
--                max_width = 80,
--                max_height = 40,
--                min_width = 40,
--                min_height = 10,
--           },

--           -- Options for built-in selector
--           builtin = {
--                -- These are passed to nvim_open_win
--                anchor = "NW",
--                border = "rounded",
--                -- 'editor' and 'win' will default to being centered
--                relative = "editor",

--                -- Window transparency (0-100)
--                winblend = 10,
--                -- Change default highlight groups (see :help winhl)
--                winhighlight = "",

--                -- These can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
--                -- the min_ and max_ options can be a list of mixed types.
--                -- max_width = {140, 0.8} means "the lesser of 140 columns or 80% of total"
--                width = nil,
--                max_width = { 140, 0.8 },
--                min_width = { 40, 0.2 },
--                height = nil,
--                max_height = 0.9,
--                min_height = { 10, 0.2 },

--                -- Set to `false` to disable
--                mappings = {
--                     ["<Esc>"] = "Close",
--                     ["<C-c>"] = "Close",
--                     ["<CR>"] = "Confirm",
--                },

--                override = function(conf)
--                     -- This is the config that will be passed to nvim_open_win.
--                     -- Change values here to customize the layout
--                     return conf
--                end,
--           },

--           -- Used to override format_item. See :help dressing-format
--           format_item_override = {},

--           -- see :help dressing_get_config
--           get_config = nil,
--      },
-- })

-- resizing splits
-- amount defaults to 3 if not specified
-- use absolute values, no + or -
require('smart-splits').resize_up("amount")
require('smart-splits').resize_down("amount")
require('smart-splits').resize_left("amount")
require('smart-splits').resize_right("amount")
-- moving between splits
-- pass same_row as a boolean to override the default
-- for the move_cursor_same_row config option.
-- See Configuration.
require('smart-splits').move_cursor_up()
require('smart-splits').move_cursor_down()
require('smart-splits').move_cursor_left("same_row")
require('smart-splits').move_cursor_right("same_row")
-- persistent resize mode
-- temporarily remap your configured resize keys to
-- smart resize left, down, up, and right, respectively,
-- press <ESC> to stop resize mode (unless you've set a different key in config)
-- resize keys also accept a range, e.e. pressing `5j` will resize down 5 times the default_amount
-- require('smart-splits').start_resize_mode()

-- recommended mappings
-- resizing splits
vim.keymap.set('n', '<A-h>', require('smart-splits').resize_left)
vim.keymap.set('n', '<A-j>', require('smart-splits').resize_down)
vim.keymap.set('n', '<A-k>', require('smart-splits').resize_up)
vim.keymap.set('n', '<A-l>', require('smart-splits').resize_right)
-- moving between splits
vim.keymap.set('n', '<C-h>', require('smart-splits').move_cursor_left)
vim.keymap.set('n', '<C-w-w>', require('smart-splits').move_cursor_left)
vim.keymap.set('n', '<C-w-c>', ':q')
vim.keymap.set('n', '<C-w-v>', ':vs')
vim.keymap.set('n', '<C-w-h>', ':split h')
vim.keymap.set('n', '<C-j>', require('smart-splits').move_cursor_down)
vim.keymap.set('n', '<C-k>', require('smart-splits').move_cursor_up)
vim.keymap.set('n', '<C-l>', require('smart-splits').move_cursor_right)



lvim.builtin.which_key.mappings["w"] = {
     name = "Splits +",
     c = { ":q<cr>", "Close Split" },
     v = { ":vs<cr>", "Split Vertically" },
     h = { ":split h<cr>", "Split Horizontally" },
     w = { ":wincmd w<cr>", "Switch Split" },
     -- l = { "<cmd>Trouble loclist<cr>", "LocationList" },
     -- w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
}

lvim.builtin.which_key.mappings["k"] = {
     name = "Code Runner",
     r    = { ":RunCode<CR>    ", ":RunCode" },
     rf   = { ":RunFile<CR>    ", ":RunFile" },
     rft  = { ":RunFile tab<CR>", "':RunFile tab" },
     rp   = { ":RunProject<CR> ", ":RunProject" },
     rc   = { ":RunClose<CR>   ", ":RunClose" },
     crf  = { ":CRFiletype<CR> ", "':CRFiletype" },
     crp  = { ":CRProjects<CR> ", "':CRProjects" },
}






vim.cmd('source ~/.config/lvim/lua/plugins/evilline.lua')
vim.cmd('source ~/.config/lvim/lua/plugins/null-ls.lua')
vim.cmd('source ~/.config/lvim/lua/plugins/telescope.lua')
vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]] -- autoformat on save

-- require("plugins.telescope")
-- require('telescope').load_extension('fzy_native')

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = { "*.json", "*.jsonc" },
--   -- enable wrap mode for json files only
--   command = "setlocal wrap",
-- })
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight",.attach(0, "bash",
--   end,
-- })
-- require('telescope.builtin').find_files({layout_strategy='horizontal',layout_config={width=0.9,height=0.9}})
