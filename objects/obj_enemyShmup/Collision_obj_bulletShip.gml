/// @description Insert description here
// You can write your code in this editor
if(!dead){
	dead=true;
	path_end();
	sprite_index=spr_enemyDie;
	obj_enemyController.killCount++;
	audio_sound_gain(snd_explosion,0.1,0);
	audio_play_sound(snd_explosion,1,false);
}