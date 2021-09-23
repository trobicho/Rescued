/// @description Insert description here
// You can write your code in this editor
if(pause || diag) exit;

image_angle+=angularSpd*delta_time/60000;
var instSpd=delta_time/60000*spd;
var x_speed=lengthdir_x(instSpd,dir);
var y_speed=lengthdir_y(instSpd,dir);

if(place_meeting(x+x_speed,y,obj_wall) || place_meeting(x+x_speed,y,obj_sas)){
	x_speed*=-1;
}
if(place_meeting(x,y+y_speed,obj_wall) || place_meeting(x,y+y_speed,obj_sas)){
	y_speed*=-1;
}
dir=point_direction(0,0,x_speed,y_speed);
x+=x_speed;
y+=y_speed;

if(place_meeting(x,y,obj_wall) || place_meeting(x,y,obj_sas)){
	for(var i=0; i<1000; i++){
		if(!place_meeting(x+i,y,obj_wall) && !place_meeting(x+i,y,obj_sas)){
			x+=i;
			break;
		}
		if(!place_meeting(x-i,y,obj_wall) && !place_meeting(x-i,y,obj_sas)){
			x-=i;
			break;
		}
		if(!place_meeting(x,y+i,obj_wall) && !place_meeting(x,y+i,obj_sas)){
			y+=i;
			break;
		}
		if(!place_meeting(x,y-i,obj_wall) && !place_meeting(x,y-i,obj_sas)){
			y-=i;
			break;
		}
		if(!place_meeting(x+i,y+i,obj_wall) && !place_meeting(x+i,y+i,obj_sas)){
			x+=i;
			y+=i;
			break;
		}
		if(!place_meeting(x+i,y-i,obj_wall) && !place_meeting(x+i,y-i,obj_sas)){
			x+=i;
			y-=i;
			break;
		}
		if(!place_meeting(x-i,y+i,obj_wall) && !place_meeting(x-i,y+i,obj_sas)){
			x-=i;
			y+=i;
			break;
		}
		if(!place_meeting(x-i,y-i,obj_wall) && !place_meeting(x-i,y-i,obj_sas)){
			x-=i;
			y-=i;
			break;
		}
	}
}