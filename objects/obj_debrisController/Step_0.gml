/// @description Insert description here
// You can write your code in this editor
if(pause || diag) exit;


if(instance_number(obj_debris)<maxDebris){
	var X=irandom_range(0,room_width);
	var Y=irandom_range(250,room_height-150);
	while(X>=camX && X<=camX+camW && Y>=camY && Y<=camY+camH && !place_meeting(X,Y,obj_player) && !place_meeting(X,Y,obj_sas)){
		X=irandom_range(0,room_width);
		Y=irandom_range(0,room_height);
	}
	instance_create_depth(X,Y,0,obj_debris);
}