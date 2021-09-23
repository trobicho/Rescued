/// @description Insert description here
// You can write your code in this editor
//var scale=window_get_width()/sprite_get_width(spr_intro);
var scale=winW/sprite_get_width(spr_title);
image_xscale=scale;
image_yscale=scale;
image_speed=0;
x=winW/2;
y=(winH-sprite_get_height(spr_title)*scale)/2;
alarm[0]=1;
