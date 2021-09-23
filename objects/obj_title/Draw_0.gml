/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_color(c_white);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_text(window_get_width()/2,window_get_height()/4*3,"Use Arrows to move");
draw_text(window_get_width()/2,window_get_height()/4*3+60,"Press ENTER to continue");
draw_set_halign(fa_left);