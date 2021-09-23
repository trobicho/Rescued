/// @description Insert description here
// You can write your code in this editor

//show_debug_message("CHUILLLLA");
if(!canShoot) exit;

if(counter1==0){
	audio_sound_gain(snd_shootBoss1,0.1,0);
	audio_play_sound(snd_shootBoss1,1,false);
}
if(counter1<20){
	with(instance_create_depth(x-47,y+30,1,obj_bulletBoss)) dir=270;
	with(instance_create_depth(x-47,y+30,1,obj_bulletBoss)) dir=300;
	with(instance_create_depth(x-47,y+30,1,obj_bulletBoss)) dir=330;
	with(instance_create_depth(x-47,y+30,1,obj_bulletBoss)) dir=240;
	with(instance_create_depth(x-47,y+30,1,obj_bulletBoss)) dir=210;
	with(instance_create_depth(x-47,y+30,1,obj_bulletBoss)) dir=random_range(225,315);
			
	alarm[3]=room_speed*0.25;
	counter1++;
}
else{
	counter1=0;
	state=0;
	alarm[0]=room_speed*random_range(actionTime1,actionTime2);
}