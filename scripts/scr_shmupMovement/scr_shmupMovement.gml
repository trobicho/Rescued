// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_shmupMovement(){
	var delta_x=(keyboard_check(vk_right))-keyboard_check(vk_left);
	var delta_y=(keyboard_check(vk_down))-keyboard_check(vk_up);
	
	if(delta_x!=0 || delta_y!=0){
		var move_dir=point_direction(0,0,delta_x,delta_y);
		var inst_spd=shmupSpd*delta_time/60000;
		var X=x;
		var Y=y;
		X+=lengthdir_x(inst_spd,move_dir);
		Y+=lengthdir_y(inst_spd,move_dir);
		if(place_meeting(X,y,obj_wall)){
			while(!place_meeting(x+delta_x,y,obj_wall))
				x+=delta_x;
		}
		else
			x=X;
		if(place_meeting(x,Y,obj_wall)){
			while(!place_meeting(x,y+delta_y,obj_wall))
				y+=delta_y;
		}
		else
			y=Y;
		
	}

}