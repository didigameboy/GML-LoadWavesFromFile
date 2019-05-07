/// @description Insert description here
// You can write your code in this editor

draw_set_color(cinza);
draw_rectangle(0,0,280, 60, false);

for (var i=0; i<array_length_1d(waves_str); i++) {
	draw_set_color(cinzamedio);
	if i == curr_wave
		draw_rectangle(0,i*13,280, (i+1)*13, false);
	draw_set_color(cinzaclaro);
	draw_set_font(fontGanon)
	draw_text(0,i*12, waves_str[i]);
}