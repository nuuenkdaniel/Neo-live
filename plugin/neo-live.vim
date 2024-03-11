if exists("g:loaded_neo_live")
  finish
endif

command! -nargs=0 Connect lua require("neo-live").connect()
command! -nargs=0 Host lua require("neo-live.host")

let g:loaded_neo_live = 1
