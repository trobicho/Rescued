/// @description Insert description here
// You can write your code in this editor

/*
with(obj_enemyShmup){
	if(x>room_width+other.borderX || x<-other.borderX || y<-other.borderY || y>room_height+other.borderY){
		instance_destroy(self);
	}
}
*/
if(killCount>=killNeeded && instance_number(obj_enemyShmup)==0 && !done){
	instance_create_depth(room_width/2,-100,0,obj_boss);
	done=true;
	/*
	instance_activate_object(obj_dialogue);
	with(obj_dialogue){
		dialogue=Dialogues.FOUND_PNJ3;
		line=0;
		diag=true;
		done=false;
	}
	done=true;*/
}