/// @description Insert description here
// You can write your code in this editor
if(pause || diag) exit;

Health-=delta_time/60000*o2Depletion;
if(Health<=0){
	with(obj_dialogue){
		dialogue=Dialogues.RUNOUT_O2;
		line=0;
		diag=true;
		done=false;
	}
	audio_play_sound(snd_runout,1,false);
	instance_activate_object(obj_dialogue);
	/*if(obj_dialogue.done==true){
		room_restart();
	}*/
}

var delta_x=(keyboard_check(vk_right))-keyboard_check(vk_left);
var delta_y=(keyboard_check(vk_down))-keyboard_check(vk_up);

if(delta_x!=0 || delta_y!=0){
	audio_sound_gain(snd_jetpack,0.1,0);
	audio_play_sound(snd_jetpack,1,false);
	var Dir=point_direction(0,0,delta_x,delta_y);
	var instAcc=delta_time/60000*acc;
	var xx_spd=lengthdir_x(instAcc,Dir);
	var yy_spd=lengthdir_y(instAcc,Dir);
	/*if(sqrt(x_speed*x_speed+y_speed*y_speed)<maxSpeed || dot_product(x_speed,y_speed,xx_spd,yy_spd)<=0.5){
		x_speed+=xx_spd;
		y_speed+=yy_spd;
	}*/
	if(x_speed<maxSpeed || dot_product(x_speed,y_speed,xx_spd,yy_spd)<0){
		x_speed+=xx_spd;
	}
	y_speed+=yy_spd;
	//dir=point_direction(0,0,x_speed,y_speed);
	
	//spd=lerp(spd,maxSpeed,0.01);
	
	if(Dir>+90 && Dir<270)
		image_xscale=-1;
	else
		image_xscale=1;
	//if(delta_x>0) dir=lerp(dir,dir-90,0.04);
	//else dir=lerp(dir,dir+90,0.04)
	sprite_index=spr_playerPsht;
}
else
	sprite_index=spr_player;
/*else{
	spd=lerp(spd,0,0.1);
}*/
//if(x_speed>0.05 || y_speed>0.05){
	//var inst_speed=delta_time/60000*spd;
	
	var X=x+x_speed;
	var Y=y+y_speed;
	
	if(place_meeting(X,Y,obj_fume)){
		if(!invincible){
			alarm[0]=room_speed*invincibilityFrame;
			alarm[1]=room_speed*blinkRate;
			invincible=true;
			Health-=10;
		}
	}
	
	//if(x_speed!=0){
		if(instance_place(X,y,obj_wall)!=noone || instance_place(X,y,obj_sas)!=noone || instance_place(X,y,obj_fume)!=noone){
			/*while(instance_place(x+sign(x_speed),y,obj_wall)==noone && instance_place(x+sign(x_speed),y,obj_sas)==noone)
				x+=sign(x_speed);*/
			//x-=4*x_speed/abs(x_speed);
			x_speed=-1;
		}
		else
			x=X;
		if(instance_place(x,Y,obj_wall)!=noone || instance_place(X,y,obj_sas)!=noone || instance_place(X,y,obj_fume)!=noone){
			/*while(instance_place(x,y+sign(y_speed),obj_wall)==noone && instance_place(x,y+sign(y_speed),obj_sas)==noone)
				y+=sign(y_speed);*/
			//y-=4*y_speed/abs(y_speed);
			y_speed=0;
		}
		else
			y=Y;
	//}
	
	/*x+=x_speed;
	y+=y_speed;
	*/

	if(place_meeting(x,y,obj_wall) || place_meeting(x,y,obj_sas) || place_meeting(x,y,obj_fume)){
		for(var i=0; i<1000; i++){
			if(!place_meeting(x+i,y,obj_wall) && !place_meeting(x+i,y,obj_sas) && !place_meeting(x+i,y,obj_fume)){
				x+=i+1;
				break;
			}
			if(!place_meeting(x-i,y,obj_wall) && !place_meeting(x-i,y,obj_sas) && !place_meeting(x-i,y,obj_fume)){
				x-=i+1;
				break;
			}
			if(!place_meeting(x,y+i,obj_wall) && !place_meeting(x,y+i,obj_sas) && !place_meeting(x,y+i,obj_fume)){
				y+=i+1;
				break;
			}
			if(!place_meeting(x,y-i,obj_wall) && !place_meeting(x,y-i,obj_sas) && !place_meeting(x,y-i,obj_fume)){
				y-=i+1;
				break;
			}
			if(!place_meeting(x+i,y+i,obj_wall) && !place_meeting(x+i,y+i,obj_sas) && !place_meeting(x+i,y+i,obj_fume)){
				x+=i+1;
				y+=i+1;
				break;
			}
			if(!place_meeting(x+i,y-i,obj_wall) && !place_meeting(x+i,y-i,obj_sas) && !place_meeting(x+i,y-i,obj_fume)){
				x+=i+1;
				y-=i+1;
				break;
			}
			if(!place_meeting(x-i,y+i,obj_wall) && !place_meeting(x-i,y+i,obj_sas) && !place_meeting(x-i,y+i,obj_fume)){
				x-=i+1;
				y+=i+1;
				break;
			}
			if(!place_meeting(x-i,y-i,obj_wall) && !place_meeting(x-i,y-i,obj_sas) && !place_meeting(x-i,y-i,obj_fume)){
				x-=i+1;
				y-=i+1;
				break;
			}
		}
	}

/*}
image_angle=(dir)%360;
*/