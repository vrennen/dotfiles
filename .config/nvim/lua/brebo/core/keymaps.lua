vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", ";", ":", {desc = "comando sem shift"})

keymap.set("n", "j", function()
    return vim.v.count == 0 and "gj" or "j"
end, {expr = true, silent = true, desc = "descer com wrap"})
keymap.set("n", "k", function()
    return vim.v.count == 0 and "gk" or "k"
end, {expr = true, silent = true, desc = "subir com wrap"})

keymap.set("n", "<leader>sv", "<C-w>v", {desc = "dividir verticalmente"})
keymap.set("n", "<leader>sh", "<C-w>s", {desc = "dividir horizontalmente"})
keymap.set("n", "<leader>sw", "<cmd>close<CR>", {desc = "fechar split"})
keymap.set("n", "<leader>st", "<C-w>T", {desc = "quebrar split em abas"})
keymap.set("n", "<M-l>", "<C-w>>", {desc = "aumentar largura"})
keymap.set("n", "<M-h>", "<C-w><", {desc = "diminuir largura"})
keymap.set("n", "<M-k>", "<C-w>+", {desc = "aumentar altura"})
keymap.set("n", "<M-j>", "<C-w>-", {desc = "diminuir altura"})
keymap.set("n", "<leader>s=", "<C-w>=", {desc = "igualar altura e largura"})

keymap.set("n", "<M-J>", ":m .+1<CR>==", {desc = "mover a linha atual pra baixo"})
keymap.set("n", "<M-K>", ":m .-2<CR>==", {desc = "mover a linha atual pra cima"})
keymap.set("v", "<M-J>", ":m '>+1<CR>gv=gv", {desc = "mover a seleção atual pra baixo"})
keymap.set("v", "<M-K>", ":m '<-2<CR>gv=gv", {desc = "mover a linha atual pra cima"})

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", {desc = "nova aba"})
keymap.set("n", "<leader>tw", "<cmd>tabclose<CR>", {desc = "fechar aba"})
keymap.set("n", "<TAB>", "<cmd>tabn<CR>", {desc = "proxima aba"})
keymap.set("n", "<S-TAB>", "<cmd>tabp<CR>", {desc = "aba anterior"})

keymap.set("n", "<leader>nh", ":nohl<CR>", {desc = "limpar highlight de pesquisa"})

keymap.set("n", "<leader>k", "<C-a>", {desc = "incrementar numero no cursor"})
keymap.set("n", "<leader>j", "<C-x>", {desc = "decrementar numero no cursor"})

keymap.set("t", "<Esc>", "<C-\\><C-n>", {desc = "voltar pro modo normal"})
keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<CR>", {desc = "abrir/fechar terminal"})

keymap.set("n", "~", "~h", {desc = "toggle case sem mover o cursor"})

keymap.set("n", "<leader>no", ":e eph_"..vim.fn.strftime("%Y%m%d%H%M%S").."<CR>", {desc = "criar nota efemera"})
