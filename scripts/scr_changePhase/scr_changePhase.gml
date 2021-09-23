// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_changePhase(){
	if(phase!=1){
		obj_ship.x=ShipX;
		obj_ship.y=ShipY;
		obj_ship.Health=ShipHealth;
	}
	with(obj_brokenShip){
		if(shipId==phase)
			instance_activate_object(self);
		else
			instance_deactivate_object(self);
	}
	if(phase==4){
		instance_activate_object(obj_warp);
	}
	else{
		instance_deactivate_object(obj_warp);
	}
}