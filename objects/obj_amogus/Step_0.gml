/// @description Insert description here
// You can write your code in this editor
if(pause || diag) exit;

if(obj_player.x<x)
	image_xscale=1;
else
	image_xscale=-1;

if(canMove){
	if(alarm[1]<=0 && canShoot){
		alarm[1]=room_speed*random_range(1,2)*shootRate;
	}
	if(isInLevel){
		dir=point_direction(x,y,obj_player.x+random_range(0,3)*obj_player.x_speed,obj_player.y+random_range(0,3)*obj_player.y_speed);
	}
	
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
}
else if(point_distance(x,y,obj_player.x,obj_player.y)<400){
	canMove=true;
	canShoot=true;
}