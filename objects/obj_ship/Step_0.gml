/// @description Insert description here
// You can write your code in this editor
if(pause || diag) exit;

if(distance_to_object(obj_star1)<400){
	//Health-=delta_time/60000*energyCost*2;
	Health-=delta_time/60000*energyCost;
}
else
	Health-=delta_time/60000*energyCost;
	
if(Health<=0 && !died && room!=Shmup){
	instance_activate_object(obj_dialogue);
	with(obj_dialogue){
		dialogue=Dialogues.RUNOUT_ENERGY;
		line=0;
		diag=true;
	}
	//Health=100;
	died=true;
	audio_play_sound(snd_runout,1,false);
}
if(stopped && alarm[2]<=0){
	alarm[2]=room_speed*stoppingCooldown;
}
if(shmupHealth<=0){
	sprite_index=spr_shipEplode;
	audio_sound_gain(snd_explosion,0.1,0);
	audio_play_sound(snd_explosion,1,false);
}
if(Health>0){
ShipHealth=Health;
ShipX=x;
ShipY=y;
}
else{
	ShipHealth=100;
	ShipX=7136;
	ShipY=6400;
}

/*
if(firstTime){
	firstTime=false;
	instance_activate_object(obj_dialogue);
	with(obj_dialogue){
		dialogue=Dialogues.INTRO2;
		line=0;
		diag=true;
	}
}
*/

if(room==Room1 || room==Room2){
scr_exploreMovement();
}
else
	scr_shmupMovement();