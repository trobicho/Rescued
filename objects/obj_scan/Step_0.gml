/// @description Insert description here
// You can write your code in this editor
if(pause) exit;

var R=r;
with(obj_brokenShip){
	var X=x;
	var Y=y;
	//if(distance_to_point(other.x,other.y)<=R){
	if(distance_to_point(other.x,other.y)<=R){
		if(!visible){
			//instance_activate_object(self);
			visible=true;
			//found=true;
			//show_debug_message("FOUND!!!!!!!!!!!!");
			var shipX=obj_ship.x;
			var shipY=obj_ship.y;
			var inclination=point_direction(shipX,shipY,X,Y);
		}
		if(!other.found){
			audio_sound_pitch(snd_ping,other.maxR/max(distance_to_point(other.x,other.y),400)/3);
			audio_play_sound(snd_ping,1,false);
			other.found=true;
		}
		/*with(instance_create_layer(shipX,shipY,"Instances",obj_icon1)){
			image_angle=point_direction(shipX,shipY,X,Y)-90;
			pnjX=X;
			pnjY=Y;
			
			
		}
		*/
	}
}
with(obj_warp){
	var X=x;
	var Y=y;
	//if(distance_to_point(other.x,other.y)<=R){
	if(distance_to_point(other.x,other.y)<=R){
		if(visible){
			//instance_activate_object(self);
			//visible=true;
			//found=true;
			//show_debug_message("FOUND!!!!!!!!!!!!");
			var shipX=obj_ship.x;
			var shipY=obj_ship.y;
			var inclination=point_direction(shipX,shipY,X,Y);
		}
		if(!other.found){
			audio_sound_pitch(snd_ping,other.maxR/max(distance_to_point(other.x,other.y),400)/3);
			audio_play_sound(snd_ping,1,false);
			other.found=true;
		}
		/*with(instance_create_layer(shipX,shipY,"Instances",obj_icon1)){
			image_angle=point_direction(shipX,shipY,X,Y)-90;
			pnjX=X;
			pnjY=Y;
			
			
		}
		*/
	}
}