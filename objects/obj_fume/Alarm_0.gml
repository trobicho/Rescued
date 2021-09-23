/// @description Insert description here
// You can write your code in this editor
visible=true;
image_speed=1;
if(!audioFume){
	audio_sound_gain(snd_fume,0.07,0);
	audio_play_sound(snd_fume,1,false);
	audioFume=false;
}