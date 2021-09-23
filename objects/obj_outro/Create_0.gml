/// @description Insert description here
// You can write your code in this editor

//launched=false;
introDone=false;

var lay_id=layer_get_id("BackgroundIntro");
var back_id=layer_background_get_id(lay_id);
//var scale=window_get_width()/sprite_get_width(spr_intro);
var scale=winW/sprite_get_width(spr_outro);
image_xscale=scale;
image_yscale=scale;
//image_speed=0;
y=(winH-sprite_get_height(spr_outro)*scale)/2;
//alarm[0]=2;
