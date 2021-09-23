/// @description Insert description here
// You can write your code in this editor
if(foundCube){
	instance_destroy(self);
	exit;
}
audio_play_sound(snd_warp,0.4,false);
instance_deactivate_all(true);
instance_activate_object(obj_globalController);
/*
var lay_id=layer_get_id("BackgroundIntro");
var back_id=layer_background_get_id(lay_id);
//var scale=window_get_width()/sprite_get_width(spr_intro);
*/
//show_debug_message(string(view_wport[0])+"   ,   "+string(view_get_visible(0)));
/*
var scale=view_wport[0]/sprite_get_width(spr_cutscene);
image_xscale=scale;
image_yscale=scale;
image_speed=0;
x=0;
y=(view_hport[0]-sprite_get_height(spr_cutscene)*scale)/2;
*/

