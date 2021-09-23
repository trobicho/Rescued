/// @description Insert description here
// You can write your code in this editor
if(!collided){
	instance_activate_object(obj_dialogue);
	with(obj_dialogue){
		dialogue=choose(Dialogues.DEATH_BY_SUN);
		line=0;
		diag=true;
	}
	collided=true;
	ShipHealth=100;
	ShipX=7136;
	ShipY=6400;
}