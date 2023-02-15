" Name:       munu.vim
" URL:        https://github.com/khnorgaard/munu.vim/
" License:    The MIT License (MIT)

hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "munu"

let g:munu_hl_enable_colors   = get(g:, 'munu_hl_enable_colors', v:true)
let g:munu_hl_strings         = get(g:, 'munu_hl_strings', v:true)
let g:munu_hl_numbers         = get(g:, 'munu_hl_numbers', v:true)
let g:munu_hl_floats          = get(g:, 'munu_hl_floats', v:true)
let g:munu_hl_booleans        = get(g:, 'munu_hl_booleans', v:true)
let g:munu_hl_comments        = get(g:, 'munu_hl_comments', v:true)
let g:munu_hl_todos           = get(g:, 'munu_hl_todos', v:true)
let g:munu_hl_terminal_colors = get(g:, 'munu_hl_terminal_colors', v:true)
let g:munu_hl_italic_comments = get(g:, 'munu_hl_italic_comments', v:true)

" Tints of grey in ~7% intervals
let s:tint00 = '#000000'
let s:tint01 = '#121212'
let s:tint02 = '#242424'
let s:tint03 = '#373737'
let s:tint04 = '#494949'
let s:tint05 = '#6d6d6d'
let s:tint06 = '#808080'
let s:tint07 = '#929292'
let s:tint08 = '#a4a4a4'
let s:tint09 = '#b6b6b6'
let s:tint10 = '#c8c8c8'
let s:tint11 = '#dbdbdb'
let s:tint12 = '#ededed'
let s:tint13 = '#ffffff'

let s:bg = get(g:, 'munu_col_bg', s:tint02)
let s:fg = get(g:, 'munu_col_fg', s:tint10)

" Colors
if g:munu_hl_enable_colors
    let s:red    = '#dabab9'
    let s:yellow = '#f1e637'
    let s:green  = '#c8dab9'
    let s:blue   = '#b8d8d9'
    let s:purple = '#cbb9da'
    let s:orange = '#fda424'
" Mono
else
    let s:red    = s:tint13
    let s:yellow = s:tint12
    let s:green  = s:tint11
    let s:blue   = s:tint08
    let s:purple = s:tint07
    let s:orange = s:fg
endif

let s:strings    = get(g:, 'munu_col_strings', s:blue)
let s:comments   = get(g:, 'munu_col_comments', s:blue)
let s:todos      = get(g:, 'munu_col_todos', s:orange)
let s:numbers    = get(g:, 'munu_col_numbers', s:tint12)
let s:floats     = get(g:, 'munu_col_floats', s:tint12)
let s:booleans   = get(g:, 'munu_col_booleans', s:tint12)
let s:success    = get(g:, 'munu_col_success', s:green)
let s:warnings   = get(g:, 'munu_col_warnings', s:yellow)
let s:errors     = get(g:, 'munu_col_errors', s:red)
let s:info       = get(g:, 'munu_col_info', s:blue)
let s:diffaddfg  = get(g:, 'munu_col_diff_add_fg', s:tint03)
let s:diffaddbg  = get(g:, 'munu_col_diff_add_bg', s:green)
let s:diffchgfg  = get(g:, 'munu_col_diff_chg_fg', s:tint03)
let s:diffchgbg  = get(g:, 'munu_col_diff_chg_bg', s:purple)
let s:diffdelfg  = get(g:, 'munu_col_diff_del_fg', s:tint03)
let s:diffdelbg  = get(g:, 'munu_col_diff_del_bg', s:red)
let s:difftxtfg  = get(g:, 'munu_col_diff_txt_fg', s:tint03)
let s:difftxtbg  = get(g:, 'munu_col_diff_txt_bg', s:blue)
let s:cursorfg   = get(g:, 'munu_col_cursor_fg', s:tint03)
let s:cursorbg   = get(g:, 'munu_col_cursor_bg', s:orange)
let s:searchfg   = get(g:, 'munu_col_search_fg', s:tint03)
let s:searchbg   = get(g:, 'munu_col_search_bg', s:orange)
let s:spellbbg   = get(g:, 'munu_col_spell_bad_bg', 'NONE')
let s:spellbfg   = get(g:, 'munu_col_spell_bad_fg', s:red)
let s:spellcbg   = get(g:, 'munu_col_spell_cap_bg', 'NONE')
let s:spellcfg   = get(g:, 'munu_col_spell_cap_fg', s:blue)
let s:spellrbg   = get(g:, 'munu_col_spell_rare_bg', 'NONE')
let s:spellrfg   = get(g:, 'munu_col_spell_rare_fg', s:purple)
let s:spelllbg   = get(g:, 'munu_col_spell_local_bg', 'NONE')
let s:spelllfg   = get(g:, 'munu_col_spell_local_fg', s:green)

set background=dark

" Basic things
exec 'hi  Normal                    guifg=' . s:fg . '        guibg=' . s:bg . '          gui=NONE'
exec 'hi  munuNormalFg              guifg=' . s:fg . '        guibg=NONE                  gui=NONE'
exec 'hi! link                      NormalNC                  Normal'
exec 'hi  ColorColumn               guifg=' . s:tint11 . '    guibg=' . s:tint03 . '      gui=NONE'
exec 'hi  CursorLine                guifg=NONE                guibg=' . s:tint03 . '      gui=NONE'
exec 'hi! link                      CursorColumn              CursorLine'

" Things that have color or style
exec 'hi  Cursor                    guifg=' . s:cursorfg . '  guibg=' . s:cursorbg . '    gui=NONE'
exec 'hi! link                      lCursor                   Cursor'
exec 'hi! link                      CursorIM                  Cursor'
exec 'hi! link                      TermCursor                Cursor'
exec 'hi! link                      TermCursorNC              Cursor'
exec 'hi  DiffAdd                   guifg=' . s:diffaddfg . ' guibg=' . s:diffaddbg . '   gui=NONE'
exec 'hi  DiffChange                guifg=' . s:diffchgfg . ' guibg=' . s:diffchgbg . '   gui=NONE'
exec 'hi  DiffDelete                guifg=' . s:diffdelfg . ' guibg=' . s:diffdelbg . '   gui=NONE'
exec 'hi  DiffText                  guifg=' . s:difftxtfg . ' guibg=' . s:difftxtbg . '   gui=NONE'
exec 'hi  Error                     guifg=' . s:errors . '    guibg=NONE          gui=NONE'
exec 'hi! link                      ErrorMsg                  Error'
exec 'hi! link                      qfError                   Error'
exec 'hi! link                      DiagnosticError           Error'
exec 'hi  WarningMsg                guifg=' . s:warnings . '  guibg=NONE          gui=NONE'
exec 'hi! link                      DiagnosticWarn            WarningMsg'
exec 'hi  DiagnosticInfo            guifg=' . s:info . '      guibg=NONE          gui=NONE'
exec 'hi  DiagnosticHint            guifg=' . s:fg . '        guibg=NONE                  gui=NONE'
exec 'hi  DiagnosticOk              guifg=' . s:success . '   guibg=NONE                  gui=NONE'
exec 'hi  DiagnosticUnderlineError  guisp=' . s:errors . '    guibg=NONE                  gui=underline'
exec 'hi  DiagnosticUnderlineWarn   guisp=' . s:warnings . '  guibg=NONE                  gui=underline'
exec 'hi  DiagnosticUnderlineInfo   guisp=' . s:info . '      guibg=NONE                  gui=underline'
exec 'hi  DiagnosticUnderlineHint   guisp=' . s:fg . '        guibg=NONE                  gui=underline'
exec 'hi  DiagnosticUnderlineOk     guisp=' . s:success . '   guibg=NONE                  gui=underline'
exec 'hi  Search                    guifg=' . s:searchfg . '  guibg=' . s:searchbg . '    gui=NONE'
exec 'hi! link                      IncSearch                 Search'
exec 'hi! link                      CurSearch                 Search'
exec 'hi  MatchParen                guifg=' . s:cursorbg . '  guibg=' . s:cursorfg . '    gui=bold'
exec 'hi  QuickFixLine              guifg=' . s:tint03 . '    guibg=' . s:tint11 . '      gui=bold'
exec 'hi  TabLineSel                guifg=' . s:tint11 . '    guibg=' . s:tint06 . '      gui=bold'
exec 'hi  Title                     guifg=' . s:fg . '        guibg=NONE                  gui=bold'
exec 'hi  Underlined                guifg=' . s:fg . '        guibg=NONE                  gui=underline'
exec 'hi  SpecialKey                guifg=' . s:fg . '        guibg=NONE                  gui=bold'
exec 'hi  SpellBad                  guisp=' . s:spellbfg . '  guibg=' . s:spellbbg . '    gui=undercurl'
exec 'hi  SpellCap                  guisp=' . s:spellcfg . '  guibg=' . s:spellcbg . '    gui=undercurl'
exec 'hi  SpellRare                 guisp=' . s:spellrfg . '  guibg=' . s:spellrbg . '    gui=undercurl'
exec 'hi  SpellLocal                guisp=' . s:spelllfg . '  guibg=' . s:spelllbg . '    gui=undercurl'

exec 'hi  NormalFloat               guifg=' . s:fg . '        guibg=' . s:tint03 . '      gui=NONE'
if has('nvim')
      exec 'hi  FloatShadow               guifg=NONE                guibg=' . s:tint01 . '      gui=NONE       blend=80'
      exec 'hi  FloatShadowThrough        guifg=NONE                guibg=' . s:tint01 . '      gui=NONE       blend=100'
endif

" Things that are grey
exec 'hi  Conceal                   guifg=' . s:tint11 . '    guibg=' . s:tint03 . '      gui=NONE'
exec 'hi  Directory                 guifg=' . s:tint11 . '    guibg=' . s:bg . '          gui=NONE'
exec 'hi  WinSeparator              guifg=' . s:tint06 . '    guibg=' . s:bg . '          gui=NONE'
exec 'hi  Folded                    guifg=' . s:tint10 . '    guibg=' . s:bg . '          gui=NONE'
exec 'hi  FoldColumn                guifg=' . s:tint10 . '    guibg=' . s:bg . '          gui=NONE'
exec 'hi  SignColumn                guifg=' . s:tint10 . '    guibg=' . s:bg . '          gui=NONE'
exec 'hi  Substitute                guifg=' . s:tint03 . '    guibg=' . s:tint11 . '      gui=NONE'
exec 'hi  LineNr                    guifg=' . s:tint11 . '    guibg=' . s:tint03 . '      gui=NONE'
exec 'hi  LineNrAbove               guifg=' . s:tint11 . '    guibg=' . s:tint03 . '      gui=NONE'
exec 'hi  LineNrBelow               guifg=' . s:tint11 . '    guibg=' . s:tint03 . '      gui=NONE'
exec 'hi  CursorLineNr              guifg=' . s:tint11 . '    guibg=' . s:tint03 . '      gui=NONE'
exec 'hi  CursorLineFold            guifg=' . s:tint11 . '    guibg=' . s:bg . '          gui=NONE'
exec 'hi  CursorLineSign            guifg=' . s:tint11 . '    guibg=' . s:bg . '          gui=NONE'
exec 'hi  ModeMsg                   guifg=' . s:tint11 . '    guibg=' . s:bg . '          gui=NONE'
exec 'hi  MsgSeparator              guifg=' . s:tint11 . '    guibg=' . s:bg . '          gui=NONE'
exec 'hi  MoreMsg                   guifg=' . s:tint11 . '    guibg=' . s:bg . '          gui=NONE'
exec 'hi  MsgArea                   guifg=' . s:tint11 . '    guibg=' . s:bg . '          gui=NONE'
exec 'hi  NonText                   guifg=' . s:tint04 . '    guibg=NONE                  gui=NONE'
exec 'hi  Pmenu                     guifg=' . s:tint03 . '    guibg=' . s:tint11 . '      gui=NONE'
exec 'hi  PmenuSel                  guifg=' . s:tint11 . '    guibg=' . s:tint03 . '      gui=NONE'
exec 'hi  PmenuSbar                 guifg=NONE                guibg=' . s:tint03 . '      gui=NONE'
exec 'hi  PmenuThumb                guifg=NONE                guibg=' . s:tint10 . '      gui=NONE'
exec 'hi  Question                  guifg=' . s:tint10 . '    guibg=' . s:bg . '          gui=NONE'
exec 'hi  qfFileName                guifg=' . s:fg . '        guibg=NONE                  gui=NONE'
exec 'hi  qfLineNr                  guifg=' . s:fg . '        guibg=NONE                  gui=NONE'
exec 'hi  StatusLine                guifg=' . s:tint11 . '    guibg=' . s:tint03 . '      gui=NONE'
exec 'hi  StatusLineNC              guifg=' . s:tint09 . '    guibg=' . s:tint03 . '      gui=NONE'
exec 'hi! link                      StatusLineTerm            StatusLine'
exec 'hi! link                      StatusLineTermNC          StatusLineNC'
exec 'hi  TabLine                   guifg=' . s:tint10 . '    guibg=' . s:tint03 . '      gui=NONE'
exec 'hi  TabLineFill               guifg=' . s:tint10 . '    guibg=' . s:tint03 . '      gui=NONE'
exec 'hi  Visual                    guifg=NONE                guibg=' . s:tint05 . '      gui=NONE'
exec 'hi  Whitespace                guifg=' . s:tint03 . '    guibg=NONE                  gui=NONE'
exec 'hi  WildMenu                  guifg=' . s:tint03 . '    guibg=' . s:tint11 . '      gui=NONE'

" Syntax highlight in mono
exec 'hi! link                      Comment                   munuNormalFg'
exec 'hi! link                      Function                  munuNormalFg'
exec 'hi! link                      Boolean                   munuNormalFg'
exec 'hi! link                      Character                 munuNormalFg'
exec 'hi! link                      Conditional               munuNormalFg'
exec 'hi! link                      Constant                  munuNormalFg'
exec 'hi! link                      Debug                     munuNormalFg'
exec 'hi! link                      Define                    munuNormalFg'
exec 'hi! link                      Delimiter                 munuNormalFg'
exec 'hi! link                      Directive                 munuNormalFg'
exec 'hi! link                      Exception                 munuNormalFg'
exec 'hi! link                      Float                     munuNormalFg'
exec 'hi! link                      Format                    munuNormalFg'
exec 'hi! link                      Identifier                munuNormalFg'
exec 'hi! link                      Ignore                    munuNormalFg'
exec 'hi! link                      Include                   munuNormalFg'
exec 'hi! link                      Keyword                   munuNormalFg'
exec 'hi! link                      Label                     munuNormalFg'
exec 'hi! link                      Macro                     munuNormalFg'
exec 'hi! link                      String                    munuNormalFg'
exec 'hi! link                      Number                    munuNormalFg'
exec 'hi! link                      Todo                      munuNormalFg'
exec 'hi! link                      Operator                  munuNormalFg'
exec 'hi! link                      PreCondit                 munuNormalFg'
exec 'hi! link                      PreProc                   munuNormalFg'
exec 'hi! link                      Repeat                    munuNormalFg'
exec 'hi! link                      SpecialChar               munuNormalFg'
exec 'hi! link                      SpecialComment            munuNormalFg'
exec 'hi! link                      Special                   munuNormalFg'
exec 'hi! link                      Statement                 munuNormalFg'
exec 'hi! link                      StorageClass              munuNormalFg'
exec 'hi! link                      Structure                 munuNormalFg'
exec 'hi! link                      Typedef                   munuNormalFg'
exec 'hi! link                      Type                      munuNormalFg'

" Terminal
if g:munu_hl_terminal_colors
    if has('nvim')
        let g:terminal_color_0  = s:bg
        let g:terminal_color_1  = s:fg
        let g:terminal_color_2  = s:fg
        let g:terminal_color_3  = s:fg
        let g:terminal_color_4  = s:fg
        let g:terminal_color_5  = s:fg
        let g:terminal_color_6  = s:fg
        let g:terminal_color_7  = s:fg
        let g:terminal_color_8  = s:fg
        let g:terminal_color_9  = s:fg
        let g:terminal_color_10 = s:fg
        let g:terminal_color_11 = s:fg
        let g:terminal_color_12 = s:fg
        let g:terminal_color_13 = s:fg
        let g:terminal_color_14 = s:fg
        let g:terminal_color_15 = s:tint13
    else
        let g:terminal_ansi_colors = [
                    \ s:s:bg, s:fg, s:fg, s:fg,
                    \ s:fg, s:fg, s:fg, s:fg,
                    \ s:fg, s:fg, s:fg, s:fg,
                    \ s:fg, s:fg, s:fg, s:tint13
                    \]
    endif
endif

" Syntax highlight with colors and things
if g:munu_hl_comments
    if g:munu_hl_italic_comments
        let s:comment_style = "italic"
    else
        let s:comment_style = "NONE"
    endif
    exec 'hi  Comment                   guifg=' . s:comments . '  guibg=NONE                  gui=' . s:comment_style
endif

if g:munu_hl_strings
    exec 'hi  String                    guifg=' . s:strings . '   guibg=NONE                  gui=NONE'
endif

if g:munu_hl_todos
    exec 'hi  Todo                      guifg=' . s:todos . '     guibg=NONE                  gui=bold'
endif

if g:munu_hl_numbers
    exec 'hi  Number                    guifg=' . s:numbers . '   guibg=NONE                  gui=NONE'
endif

if g:munu_hl_floats
    exec 'hi  Float                     guifg=' . s:floats . '    guibg=NONE                  gui=NONE'
endif

if g:munu_hl_booleans
    exec 'hi  Boolean                   guifg=' . s:booleans .  ' guibg=NONE                  gui=NONE'
endif

" Plugins
exec 'hi  SignifySignAdd            guifg=' . s:diffaddbg . ' guibg=NONE                  gui=NONE'
exec 'hi  SignifySignChange         guifg=' . s:diffchgbg . ' guibg=NONE                  gui=NONE'
exec 'hi  SignifySignDelete         guifg=' . s:diffdelbg . ' guibg=NONE                  gui=NONE'

exec 'hi  GitGutterAdd              guifg=' . s:diffaddbg . ' guibg=NONE                  gui=NONE'
exec 'hi  GitGutterChange           guifg=' . s:diffchgbg . ' guibg=NONE                  gui=NONE'
exec 'hi  GitGutterDelete           guifg=' . s:diffdelbg . ' guibg=NONE                  gui=NONE'

exec 'hi! link                      CmpItemKindDefault        Pmenu'
