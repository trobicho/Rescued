/// @description Insert description here
// You can write your code in this editor

if(bossHealth<=100*(3-bossPhase)/3){
	sprite_index=asset_get_index("spr_bossPhaseExplode"+string(bossPhase));
	bossPhase++;
	exploding=true;
	canShoot=false;
	audio_sound_gain(snd_explosion,0.1,0);
	audio_play_sound(snd_explosion,1,false);
}