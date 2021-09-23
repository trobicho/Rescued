/// @description Insert description here
// You can write your code in this editor
if(!collided && !other.stopped){
	instance_activate_object(obj_dialogue);
	with(obj_dialogue){
		dialogue=choose(Dialogues.GAIN_ENERGY1,Dialogues.GAIN_ENERGY2);
		line=0;
		diag=true;
	}
	collided=true
	other.stopped=true;
}