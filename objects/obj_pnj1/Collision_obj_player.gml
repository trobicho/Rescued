/// @description Insert description here
// You can write your code in this editor

if(!found){
	instance_activate_object(obj_dialogue);
	with(obj_dialogue){
		switch(other.pnjId){
			case 1:
				dialogue=Dialogues.FOUND_PNJ1;
				break;
			case 2:
				dialogue=Dialogues.FOUND_PNJ2;
				break;
			case 3:
				dialogue=Dialogues.FOUND_PNJ3;
				break;
		}
		line=0;
		diag=true;
		done=false;
	}
	found=true;
}