# General
# ───────

# Change the default color theme (the theme must be in colors/ dir)
# To see the other available themes, use the :colorscheme command
# This one is from https://github.com/raiguard/kak-one
colorscheme one-darker

# Show line number on the left relative to the cursor and with highlight on
# current line
add-highlighter global/ number-lines -hlcursor -relative


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
