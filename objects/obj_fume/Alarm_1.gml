/// @description Insert description here
// You can write your code in this editor
visible=false;
image_index=0;
alarm[0]=room_speed*noFumeTime;
if(audioFume){
	audio_stop_sound(snd_fume);
	audioFume=true;
}