/// @description Insert description here
// You can write your code in this editor
if(pause || diag) exit;


var maxA=maxAsteroid;
if(room==Shmup)
	maxA=maxShmupAst;
if(instance_number(obj_asteroid)<maxA){
	var X=irandom_range(0,room_width);
	var Y=irandom_range(0,room_height);
	if(room==Room1){
	while(X<camX && X>camX+camW && Y<camY && Y>camY+camH && !place_meeting(X,Y,obj_ship)){
		X=irandom_range(0,room_width);
		Y=irandom_range(0,room_height);
	}
	}
	instance_create_depth(X,Y,-2,obj_asteroid);
}