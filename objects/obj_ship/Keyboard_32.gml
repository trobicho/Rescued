/// @description Insert description here
// You can write your code in this editor

if(room==Shmup && canShoot){
	with(instance_create_depth(x+bulletOffsetX,y+bulletOffsetY,0,obj_bulletShip)){
		dir=90+random_range(-5,5);
	}
	audio_play_sound(snd_shootShip,1,false);
	canShoot=false;
	alarm[3]=room_speed*shootCooldown;
}
if(room==Room1){
if(alarm[0]<=0 && !instance_exists(obj_scan)){
//if(!instance_exists(obj_scan) && ){
	Health-=5;
	with(instance_create_depth(x,y,-1,obj_scan)) pnj1Found=false;
	alarm[0]=room_speed*scanCooldown;
}
}