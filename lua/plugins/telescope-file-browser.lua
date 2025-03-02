return {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    init = function() 
        vim.keymap.set("n", "<leader>fb", function()
            require("telescope").extensions.file_browser.file_browser()
        end)
        vim.keymap.set("n", "<space>fb", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
    end
}
