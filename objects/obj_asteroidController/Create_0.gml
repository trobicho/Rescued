/// @description Insert description here
// You can write your code in this editor

maxAsteroid=100;
maxShmupAst=5;

var X=0;
var Y=0;
var maxA=maxAsteroid;
if(room==Shmup)
	maxA=maxShmupAst;
repeat(maxA){
	/*Dir=random_range(0,360);
	X=irandom_range(0,room_width);
	Y=irandom_range(0,room_height);
	with(instance_create_depth(X,Y,-1,obj_asteroid)){
		sprite_index=choose(spr_asteroid1,spr_asteroid2,spr_asteroid2);
		dir=Dir;
		
	}*/
	X=irandom_range(0,room_width);
	Y=irandom_range(0,room_height);
	instance_create_depth(X,Y,-2,obj_asteroid);
	if(room==Room1){
	while(X<camX && X>camX+camW && Y<camY && Y>camY+camH && !place_meeting(X,Y,obj_ship)){
		X=irandom_range(0,room_width);
		Y=irandom_range(0,room_height);
	}
	}
	//instance_create_layer(50,50,"Instances",obj_asteroid);
}