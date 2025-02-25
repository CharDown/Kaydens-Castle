draw_set_halign(fa_right)
draw_set_font(aaaaaa)
for (i = 0; i < array_length(global.text); i++){
	text = global.text[i]
	draw_text(1900,100+(i*30),text)
	textseen+=1
	if textseen = 50 {
		array_shift(global.text)	
		textseen = 0
	}
}

	