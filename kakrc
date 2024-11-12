# General
# ───────

# Change the default color theme (the theme must be in colors/ dir)
# To see the other available themes, use the :colorscheme command
# This one is from https://github.com/raiguard/kak-one
colorscheme one-darker

# Show line number on the left relative to the cursor and with highlight on
# current line
add-highlighter global/ number-lines -hlcursor -relative


# Keymaps
# ───────

map global user w ':w<ret>' -docstring 'write buffer'


# LSP
# ───

# https://github.com/kakoune-lsp/kakoune-lsp
# 
# To install other LSP:
# https://github.com/kakoune-lsp/kakoune-lsp/wiki/How-to-install-servers
# 
# kakoune-lsp auto-detects LSP according to this config file:
# https://github.com/kakoune-lsp/kakoune-lsp/blob/master/rc/servers.kak
eval %sh{kak-lsp}
lsp-enable
# Show diagnostic at the end of the line
lsp-inlay-diagnostics-enable global

# Global LSP keymaps
map global normal D ':lsp-hover<ret>' -docstring 'documentation'

# Pressing <space>l enter in LSP keymap group defined in kak-lsp
map global user l %{:enter-user-mode lsp<ret>} -docstring "LSP mode"

# Not sure what it does
map global insert <tab> '<a-;>:try lsp-snippets-select-next-placeholders catch %{ execute-keys -with-hooks <lt>tab> }<ret>' -docstring 'Select next snippet placeholder'

# Add selection mappings on <a-a> (around) <a-i> (inside)
map global object a '<a-semicolon>lsp-object<ret>' -docstring 'LSP any symbol'
map global object <a-a> '<a-semicolon>lsp-object<ret>' -docstring 'LSP any symbol'
map global object f '<a-semicolon>lsp-object Function Method<ret>' -docstring 'LSP function or method'
map global object t '<a-semicolon>lsp-object Class Interface Struct<ret>' -docstring 'LSP class interface or struct'
map global object d '<a-semicolon>lsp-diagnostic-object --include-warnings<ret>' -docstring 'LSP errors and warnings'
map global object D '<a-semicolon>lsp-diagnostic-object<ret>' -docstring 'LSP errors'
