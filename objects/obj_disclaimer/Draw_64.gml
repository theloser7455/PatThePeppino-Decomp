draw_set_halign(fa_center)
var mid = room_width / 2
draw_set_font(global.font_pizzafont)
draw_text_wiggle(mid, 100, 1, "DISCLAIMER!!!", false, false)
draw_set_font(global.font_pizzafont_small)
draw_text_wiggle(mid, room_height / 2 - 90, 1, "THE BROWSER VERSION OF THIS GAME HAS BEEN\nNOTORIOUSLY MORE BROKEN THAN THE DESKTOP\nVERSION FOR SOME REASON. BECAUSE OF THIS,\nDOWNLOADING THE DESKTOP VERSION\nIS RECOMMENDED!", false, false)
draw_text_wiggle(mid, room_height / 2 + 65, 1, "IF YOU DO SEE BUGS IN ACTION ON EITHER\nVERSION, PLEASE LET ME KNOW IN THE COMMENTS.\nI'LL HOPEFULLY FIX THEM IN THE FUTURE.", false, false)
draw_set_font(global.font_pizzafont)
draw_text_wiggle(mid, room_height - 70, 1, "PRESS SHIFT TO CONTINUE.", false, false)