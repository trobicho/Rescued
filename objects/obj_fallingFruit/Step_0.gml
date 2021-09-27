/// @description Insert description here
// You can write your code in this editor
if(x-obj_playerGrav.x<=120 && !falling){
	falling=true;
}

if(falling){
	vsp+=delta_time/1000000*12;
	y+=vsp;
}