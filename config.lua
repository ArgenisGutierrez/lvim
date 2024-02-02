reload('user.plugins')
reload('user.colorscheme')
reload('user.options')
reload('user.statusline')
reload('user.lsp')
reload('user.keymaps')
reload('user.which-key')
-- fix momentaneo a context commen deprecade
lvim.builtin.treesitter.context_commentstring = nil
