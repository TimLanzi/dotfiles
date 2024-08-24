require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "window left" })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "window right" })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "window up" })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "window down" })

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

--------------
-- obsidian --
--------------
--
-- >>> oo # from shell, navigate to vault (optional)
--
-- # NEW NOTE
-- >>> on "Note Name" # call my "obsidian new note" shell script (~/bin/on)
-- >>>
-- >>> ))) <leader>on # inside vim now, format note as template
-- >>> ))) # add tag, e.g. fact / blog / video / etc..
-- >>> ))) # add hubs, e.g. [[python]], [[machine-learning]], etc...
-- >>> ))) <leader>of # format title
--
-- # END OF DAY/WEEK REVIEW
-- >>> or # review notes in inbox
-- >>>
-- >>> ))) <leader>ok # inside vim now, move to zettelkasten
-- >>> ))) <leader>odd # or delete
-- >>>
-- >>> og # organize saved notes from zettelkasten into notes/[tag] folders
-- >>> ou # sync local with Notion
--
-- navigate to vault
map("n", "<leader>oo", ":cd /home/tlanzi/Documents/Obsidian Vault<cr>")
--
-- convert note to template and remove leading white space
map("n", "<leader>on", ":ObsidianTemplate note<cr> :lua vim.cmd([[1,/^\\S/s/^\\n\\{1,}//]])<cr>")
-- strip date from note title and replace dashes with spaces
-- must have cursor on title
map("n", "<leader>of", ":s/\\(# \\)[^_]*_/\\1/ | s/-/ /g<cr>")
--
-- search for files in full vault
map("n", "<leader>os", "<cmd>Telescope find_files search_dirs={\"/home/tlanzi/Documents/Obsidian Vault/notes\"}<cr>")
map("n", "<leader>oz", "<cmd>Telescope live_grep search_dirs={\"/home/tlanzi/Documents/Obsidian Vault/notes\"}<cr>")
--
-- search for files in notes (ignore zettelkasten)
-- map("n", "<leader>ois", ":Telescope find_files search_dirs={\"/Users/alex/library/Mobile\\ Documents/iCloud~md~obsidian/Documents/ZazenCodes/notes\"}<cr>")
-- map("n", "<leader>oiz", ":Telescope live_grep search_dirs={\"/Users/alex/library/Mobile\\ Documents/iCloud~md~obsidian/Documents/ZazenCodes/notes\"}<cr>")
--
-- for review workflow
-- move file in current buffer to zettelkasten folder
map("n", "<leader>ok", ":!mv '%:p' '/home/tlanzi/Documents/Obsidian Vault/zettelkasten'<cr>:bd<cr>")
-- delete file in current buffer
map("n", "<leader>odd", ":!rm '%:p'<cr>:bd<cr>")
