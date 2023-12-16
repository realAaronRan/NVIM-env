return {
    "alexghergh/nvim-tmux-navigation",
    config = function ()
        local tmux = require("nvim-tmux-navigation")

        local opts = { silent = true }
        vim.keymap.set('n', "<A-h>", tmux.NvimTmuxNavigateLeft, opts)
        vim.keymap.set('n', "<A-j>", tmux.NvimTmuxNavigateDown, opts)
        vim.keymap.set('n', "<A-k>", tmux.NvimTmuxNavigateUp, opts)
        vim.keymap.set('n', "<A-l>", tmux.NvimTmuxNavigateRight, opts)
    end
}
