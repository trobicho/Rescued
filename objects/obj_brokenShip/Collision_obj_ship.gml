/// @description Insert description here
// You can write your code in this editor


//show_debug_message("A  "+string(phase)+"   G   "+string(shipId));
if(!found && phase==shipId && visible){
	ShipX=obj_ship.x;
	ShipY=obj_ship.y;
	switch(shipId){
		case 1:
			instance_activate_object(obj_dialogue);
			with(obj_dialogue){
				dialogue=Dialogues.FOUND_SHIP1;
				line=0;
				diag=true;
				done=false;
			}
			break;
		case 2:
			instance_activate_object(obj_dialogue);
			with(obj_dialogue){
				dialogue=Dialogues.FOUND_SHIP2;
				line=0;
				diag=true;
				done=false;
			}
			break;
		case 3:
			instance_activate_object(obj_dialogue);
			with(obj_dialogue){
				dialogue=Dialogues.FOUND_SHIP3;
				line=0;
				diag=true;
				done=false;
			}
			break;
	}
	found=true;
}