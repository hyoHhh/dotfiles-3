local snippets = require'snippets'
local U = require'snippets.utils'

local snips = {}

snips._global = {
  copyright = U.force_comment [[Copyright (C) Ashkan Kiani ${=os.date("%Y")}]];
  todo = U.force_comment [[TODO(${1=io.popen("id -un"):read"*l"}): ]];
  uname = function() return vim.loop.os_uname().sysname end;
  date = function() return os.date() end;
  epoch = function() return os.time() end;
  note = U.force_comment [[NOTE(${1=io.popen("id -un"):read"*l"}): ]];
}
snips.bib       = require('module/snip/bib').get_snippets()       -- WIP
snips.c         = require('module/snip/c').get_snippets()
snips.cpp       = require('module/snip/cpp').get_snippets()       -- WIP
snips.cmake     = require('module/snip/cmake').get_snippets()     -- WIP
snips.go        = require('module/snip/go').get_snippets()        -- WIP
snips.html      = require('module/snip/html').get_snippets()      -- WIP
snips.java      = require('module/snip/java').get_snippets()      -- WIP
snips.lua       = require('module/snip/lua').get_snippets()
snips.make      = require('module/snip/make').get_snippets()      -- WIP
snips.markdown  = require('module/snip/markdown').get_snippets()  -- WIP
snips.python    = require('module/snip/python').get_snippets()    -- WIP
snips.rmd       = require('module/snip/rmd').get_snippets()       -- WIP
snips.rust      = require('module/snip/rust').get_snippets()      -- WIP
snips.sh        = require('module/snip/sh').get_snippets()        -- WIP
snips.tex       = require('module/snip/tex').get_snippets()       -- WIP
snips.vim       = require('module/snip/vim').get_snippets()       -- WIP

snippets.snippets = snips
snippets.use_suggested_mappings()
