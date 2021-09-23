/// @description Insert description here
// You can write your code in this editor
if(pause) exit;

if(alarm[1]<=0){
	Health-=10;
	shmupHealth-=10;
	var DDir=other.dir;
	with(instance_create_depth(other.x,other.y,1,obj_hit)){
		image_angle=(DDir-180)%360;
	}
	//other.dir=(other.dir+180)%360;
	other.dir=(other.dir+random_range(-80,80))%360;
	alarm[1]=room_speed*hitStun;
}