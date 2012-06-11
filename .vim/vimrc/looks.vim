" Stuff having to do with looks go here

if has("gui_running")
" GUI ================
  "colors sienna
  "colors zenburn
  "colors lucius
  colors jellybeans
  set lines=70
  set columns=130

  if has("gui_gtk2")
    set guifont=Monaco\ 12
  elseif has("gui_win32")
    set guifont=Monaco:h10:cANSI
  else
    set guifont=Monaco:h12
  endif
else
" TERMINAL ===========
  " for default color scheme
  set background=dark

  if $SSH_CONNECTION == ""  " Local terminal
    set t_Co=256
  else            " Remote terminal
    "set t_Co=16
    set t_Co=256
  endif

  if &term == "screen-bce"  " Running in screen
    set ttymouse=xterm2
  endif

  "colors zenburn
  "colors lucius
  colors jellybeans
endif
