/// @description Insert description here


if(alarm[1]<=0){
	shmupHealth-=5;
	//var DDir=other.dir;
	with(instance_create_depth(x,y,1,obj_hit)){
		//image_angle=(DDir-180)%360;
	}
	with(other)
		instance_destroy(self);
	//other.dir=(other.dir+180)%360;
	//other.dir=(other.dir+random_range(-80,80))%360;
	alarm[1]=room_speed*hitStun;
	audio_play_sound(snd_hitShip,1,false);
}