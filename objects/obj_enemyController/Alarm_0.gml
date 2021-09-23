/// @description Insert description here
// You can write your code in this editor
if(instance_number(obj_enemyShmup)<maxEnemy && killCount<killNeeded){
	with(instance_create_depth(50,50,1,obj_enemyShmup)){
		state=choose(0,1,2,3,4,5);
		//show_debug_message(string(state));
		switch(state){
			case 0:
				x=-32;
				y=room_height/4;
				path_start(pth_sin1,4,path_action_stop,false);
				break;
			case 1:
				x=room_width+32;
				y=room_height/4;
				path_start(pth_sin2,4,path_action_stop,false);
				break;
			case 2:
				x=room_width+32;
				y=room_height/5;
				path_start(pth_arc1,4,path_action_stop,false);
				break;
			case 3:
				x=-32;
				y=room_height/5;
				path_start(pth_arc2,4,path_action_stop,false);
				break;
			case 4:
				x=-32;
				y=room_height/4;
				path_start(pth_wave1,4,path_action_stop,false);
				break;
			case 5:
				x=-32;
				y=room_height/4;
				path_start(pth_wave2,4,path_action_stop,false);
				break;
		}
	}
}
alarm[0]=room_speed*spawnTime;