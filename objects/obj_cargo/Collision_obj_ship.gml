/// @description Insert description here
// You can write your code in this editor

if(!foundCube){
	if(!collided){
		instance_activate_object(obj_dialogue);
		with(obj_dialogue){
			dialogue=Dialogues.ENTERING_CARGO;
			line=0;
			diag=true;
		}
		collided=true;
	}
}