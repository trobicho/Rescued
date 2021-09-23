/// @description Insert description here
// You can write your code in this editor

if(pause) exit;

//if(alarm[0]<=0 && !instance_exists(obj_scan) && Health>=50){
if(room==Room1){
if(alarm[0]<=0 && !instance_exists(obj_scan)){
//if(!instance_exists(obj_scan) && ){
	Health-=5;
	with(instance_create_depth(x,y,-1,obj_scan)) pnj1Found=false;
	alarm[0]=room_speed*scanCooldown;
}
}
