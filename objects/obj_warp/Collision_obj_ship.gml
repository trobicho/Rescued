/// @description Insert description here
// You can write your code in this editor
if(room==Room1){
	if(!collided){
		instance_activate_object(obj_dialogue);
		with(obj_dialogue){
			dialogue=Dialogues.ENTERING_WARP1;
			line=0;
			diag=true;
		}
		collided=true;
	}
}
else if(room==Room2 && foundCube){
	if(!collided){
		instance_activate_object(obj_dialogue);
		with(obj_dialogue){
			dialogue=Dialogues.ENTERING_WARP2;
			line=0;
			diag=true;
		}
		collided=true;
	}
}