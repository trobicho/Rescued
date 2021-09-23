/// @description Insert description here
// You can write your code in this editor
if(!invincible){
	alarm[0]=room_speed*invincibilityFrame;
	alarm[1]=room_speed*blinkRate;
	invincible=true;
	Health-=10;
	audio_play_sound(snd_hitPlayer,1,false);
}