/// @description Insert description here
// You can write your code in this editor

maxDebris=20;

var X=0;
var Y=0;
repeat(maxDebris){
	/*Dir=random_range(0,360);
	X=irandom_range(0,room_width);
	Y=irandom_range(0,room_height);
	with(instance_create_depth(X,Y,-1,obj_asteroid)){
		sprite_index=choose(spr_asteroid1,spr_asteroid2,spr_asteroid2);
		dir=Dir;
		
	}*/
	var X=irandom_range(0,room_width);
	var Y=irandom_range(250,room_height-150);
	while(X>=camX && X<=camX+camW && Y>=camY && Y<=camY+camH && !place_meeting(X,Y,obj_player) && !place_meeting(X,Y,obj_sas)){
		X=irandom_range(0,room_width);
		Y=irandom_range(0,room_height);
	}
	instance_create_depth(X,Y,0,obj_debris);
}