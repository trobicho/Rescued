// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_exploreMovement(){
	var delta_x=(keyboard_check(vk_right))-keyboard_check(vk_left);
	var delta_y=(keyboard_check(vk_down))-keyboard_check(vk_up);
	
	if(delta_x!=0){
		if(delta_x>0) dir=lerp(dir,dir-90,0.04);
		else dir=lerp(dir,dir+90,0.04)
	}
	if(delta_y!=0 || autopilot){
		spd=lerp(spd,maxSpeed,0.1);
		/*
		var newDir=point_direction(0,0,delta_x,delta_y);
		if(abs(newDir-dir)<=90 || abs(360-newDir+dir)<=90){
			dir=lerp(dir,newDir,0.1);
		}
		else dir=newDir;
		*/
		/*
		var inst_speed=delta_time/60000*spd;
		x+=lengthdir_x(inst_speed,dir);
		y+=lengthdir_y(inst_speed,dir);
		*/
	}
	else{
		spd=lerp(spd,0,0.1);
	}
	if(spd>0.1){
		var inst_speed=delta_time/60000*spd;
		x+=lengthdir_x(inst_speed,dir);
		y+=lengthdir_y(inst_speed,dir);
	}
	image_angle=(dir-90)%360;
}