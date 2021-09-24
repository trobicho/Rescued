/// @description Insert description here
// You can write your code in this editor
if(!pause){
	pause=true;
	//instance_deactivate_all(true);
	with(obj_ship){
		image_speed=0;
	}
	with(obj_pnj){
		image_speed=0;
	}
}
else{
	pause=false;
	//instance_activate_all();
	with(obj_ship){
		image_speed=1;
	}
	with(obj_pnj){
		image_speed=1;
	}
}