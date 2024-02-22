if exists("g:loaded_neo-live")
  finish
endif

command! -nargs=0 Connect lua require("neolive-plugin").connect()
command! -nargs=0 Host lua require("neolive-plugin").host()

let g:loaded_neo-live = 1
