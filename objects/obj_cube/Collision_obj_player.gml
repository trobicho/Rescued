/// @description Insert description here
// You can write your code in this editor

if(!found){
	instance_activate_object(obj_dialogue);
	with(obj_dialogue){
		dialogue=Dialogues.FOUND_TECH;
		line=0;
		diag=true;
		done=false;
	}
	foundCube=true;
	found=true;
}