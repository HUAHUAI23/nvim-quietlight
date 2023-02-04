let s:style = 'light'

let g:colors_name = "quietlight"

"}}}
" GUI And Cterm Palettes:"{{{
" ----------------------------------------------------------------------------

let s:palette = {'gui' : {} , 'cterm' : {}}

let s:gui_background = "#f5f5f5"
let s:gui_foreground = "#333333"
let s:gui_selection  = "#a1a8b1"
let s:gui_line       = "#e4f6d4"
let s:gui_comment    = "#aaaaaa"

let s:gui_white  = "#ffffff"
let s:gui_red    = "#aa3731"
let s:gui_orange = "#ab6526"
let s:gui_yellow = "#ffe055"
let s:gui_green  = "#448c27"
let s:gui_aqua   = "#91b3e0"
let s:gui_blue   = "#4b83cd"
let s:gui_purple = "#7a3e9d"

let s:palette.gui.background   = { 'light' : s:gui_background }
let s:palette.gui.foreground   = { 'light' : s:gui_foreground }
let s:palette.gui.window       = { 'light' : s:gui_background }
let s:palette.gui.popupwindow  = { 'light' : s:gui_white      }
let s:palette.gui.selection    = { 'light' : s:gui_selection  }
let s:palette.gui.line         = { 'light' : s:gui_line       }
let s:palette.gui.comment      = { 'light' : s:gui_comment    }
let s:palette.gui.red          = { 'light' : s:gui_red        }
let s:palette.gui.orange       = { 'light' : s:gui_orange     }
let s:palette.gui.yellow       = { 'light' : s:gui_yellow     }
let s:palette.gui.green        = { 'light' : s:gui_green      }
let s:palette.gui.aqua         = { 'light' : s:gui_aqua       }
let s:palette.gui.blue         = { 'light' : s:gui_blue       }
let s:palette.gui.purple       = { 'light' : s:gui_purple     }
let s:palette.gui.addbg        = { 'light' : s:gui_green      }
let s:palette.gui.addfg        = { 'light' : "#dfefdf"        }
let s:palette.gui.changebg     = { 'light' : s:gui_orange     }
let s:palette.gui.changefg     = { 'light' : "#f7e7cc"        }
let s:palette.gui.delbg        = { 'light' : s:gui_red        }
let s:palette.gui.darkblue     = { 'light' : "#00005f"        }
let s:palette.gui.darkcyan     = { 'light' : "#005f5f"        }
let s:palette.gui.darkred      = { 'light' : "#660000"        }
let s:palette.gui.mauve        = { 'light' : "#705697"        }
let s:palette.gui.lightmauve   = { 'light' : "#c4b7d7"        }
let s:palette.gui.darkpurple   = { 'light' : "#5f005f"        }
let s:palette.gui.lime         = { 'light' : "#c1f5b0"        }
let s:palette.gui.olive        = { 'light' : "#a6b39b"        }
let s:palette.gui.gray         = { 'light' : "#777777"        }
let s:palette.gui.statusline   = { 'light' : s:gui_background }
let s:palette.gui.statuslinenc = { 'light' : s:gui_background }
let s:palette.gui.gitgutteradd = { 'light' : s:gui_green      }
let s:palette.gui.gitgutterchg = { 'light' : s:gui_orange     }
let s:palette.gui.gitgutterdlt = { 'light' : s:gui_red        }
let s:palette.gui.linewarning  = { 'light' : s:gui_yellow     }

let s:cterm_background = "231"
let s:cterm_foreground = "59"
let s:cterm_selection  = "145"
let s:cterm_line       = "194"
let s:cterm_comment    = "145"

let s:cterm_white  = "231"
let s:cterm_red    = "131"
let s:cterm_orange = "130"
let s:cterm_yellow = "221"
let s:cterm_green  = "64"
let s:cterm_aqua   = "110"
let s:cterm_blue   = "68"
let s:cterm_purple = "97"

let s:palette.cterm.background   = { 'light' : s:cterm_background }
let s:palette.cterm.foreground   = { 'light' : s:cterm_foreground }
let s:palette.cterm.window       = { 'light' : s:cterm_background }
let s:palette.cterm.popupwindow  = { 'light' : s:cterm_white      }
let s:palette.cterm.selection    = { 'light' : s:cterm_selection  }
let s:palette.cterm.line         = { 'light' : s:cterm_line       }
let s:palette.cterm.comment      = { 'light' : s:cterm_comment    }
let s:palette.cterm.red          = { 'light' : s:cterm_red        }
let s:palette.cterm.orange       = { 'light' : s:cterm_orange     }
let s:palette.cterm.yellow       = { 'light' : s:cterm_yellow     }
let s:palette.cterm.green        = { 'light' : s:cterm_green      }
let s:palette.cterm.aqua         = { 'light' : s:cterm_aqua       }
let s:palette.cterm.blue         = { 'light' : s:cterm_blue       }
let s:palette.cterm.purple       = { 'light' : s:cterm_purple     }
let s:palette.cterm.addbg        = { 'light' : s:cterm_green      }
let s:palette.cterm.addfg        = { 'light' : "194"              }
let s:palette.cterm.changebg     = { 'light' : s:cterm_orange     }
let s:palette.cterm.changefg     = { 'light' : "224"              }
let s:palette.cterm.delbg        = { 'light' : s:cterm_red        }
let s:palette.cterm.darkblue     = { 'light' : "17"               }
let s:palette.cterm.darkcyan     = { 'light' : "24"               }
let s:palette.cterm.darkred      = { 'light' : "52"               }
let s:palette.cterm.mauve        = { 'light' : "60"               }
let s:palette.cterm.lightmauve   = { 'light' : "60"               }
let s:palette.cterm.darkpurple   = { 'light' : "53"               }
let s:palette.cterm.lime         = { 'light' : "157"              }
let s:palette.cterm.olive        = { 'light' : "145"              }
let s:palette.cterm.gray         = { 'light' : "102"              }
let s:palette.cterm.statusline   = { 'light' : s:cterm_background }
let s:palette.cterm.statuslinenc = { 'light' : s:cterm_background }
let s:palette.cterm.gitgutteradd = { 'light' : s:cterm_green      }
let s:palette.cterm.gitgutterchg = { 'light' : s:cterm_orange     }
let s:palette.cterm.gitgutterdlt = { 'light' : s:cterm_red        }
let s:palette.cterm.linewarning  = { 'light' : "NONE"             }

"}}}
" Formatting Options:"{{{
" ----------------------------------------------------------------------------
let s:none   = "NONE"
let s:t_none = "NONE"
let s:n      = "NONE"
let s:c      = ",undercurl"
let s:r      = ",reverse"
let s:s      = ",standout"
let s:b      = ",bold"
let s:u      = ",underline"
let s:i      = ",italic"

function! s:build_prim(hi_elem, field)
  " Given a:hi_elem = bg, a:field = comment
  let l:vname = "s:" . a:hi_elem . "_" . a:field " s:bg_comment
  let l:gui_assign = "gui".a:hi_elem."=".s:palette.gui[a:field][s:style] " guibg=...
  let l:cterm_assign = "cterm".a:hi_elem."=".s:palette.cterm[a:field][s:style] " ctermbg=...
  " exe "let " . l:vname . " = ' " . l:gui_assign . " " . l:cterm_assign . "'"
  echo "let " . l:vname . " = ' " . l:gui_assign . " " . l:cterm_assign . "'"
  " echo l:vname
endfunction

call s:build_prim('bg', 'line')
call s:build_prim('fg', 'line')

echo  "let s:fmt_none = ' gui=NONE".          " cterm=NONE".          " term=NONE"        ."'"
echo "let s:fmt_bold = ' gui=NONE".s:b.      " cterm=NONE".s:b.      " term=NONE".s:b    ."'"
