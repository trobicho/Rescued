/// @description Insert description here
// You can write your code in this editor
if(sprite_index==spr_shipEplode)
	room_restart();
else if(isReversed){
	image_index=0;
	image_speed=1;
	isReversed=false;
}
else if(!isReversed){
	image_speed=-1;
	image_index=image_number-1;
	isReversed=true;
}