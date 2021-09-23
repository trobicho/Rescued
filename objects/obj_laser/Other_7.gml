/// @description Insert description here
// You can write your code in this editor
if(sprite_index==spr_laserEnd){
	instance_destroy(self);
	exit;
}
image_index=image_number-1;
image_speed=0;
stretching=true;
alarm[0]=room_speed*activeTime;