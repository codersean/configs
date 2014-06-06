require("termit.colormaps")
require("termit.utils")

defaults = {}
defaults.scrollbackLines = 1000
defaults.geometry = '110x36'
defaults.hideSingleTab = true
defaults.hideMenubar   = true
defaults.transparency  = 0.2

bindKey('CtrlShift-c',    copy)
bindKey('CtrlShift-v',    paste)
bindKey('CtrlShift-w',    closeTab)
bindKey('CtrlShift-q',    quit)

bindKey('Ctrl-F',         findDlg)
bindKey('Ctrl-Page_Up',   prevTab)
bindKey('Ctrl-Page_Down', nextTab)

setOptions(defaults)
