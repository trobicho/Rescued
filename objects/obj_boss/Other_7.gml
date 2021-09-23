/// @description Insert description here
// You can write your code in this editor
if(exploding){
	exploding=false;
	sprite_index=asset_get_index("spr_bossPhase"+string(bossPhase));
	canShoot=true;
	if(bossPhase==4){
		if(instance_exists(obj_laser))
			instance_deactivate_object(obj_laser);
		room_goto(Room2);
		instance_destroy(self);
	}
	else
		alarm[0]=room_speed*random_range(actionTime1,actionTime2);
}