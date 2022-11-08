require'lspconfig'.html.setup{
    cmd = {"vscode-html-language-server", "--stdio"},
    filetypes = { "html" },
    init_options = {
        configurationSection = { "html", "css", "javascript" },
        embeddedLanguages = {
            css = true,
            javascript = true
        }
    },
    settings = {} 
}

require'lspconfig'.tsserver.setup{}
