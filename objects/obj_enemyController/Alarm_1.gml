/// @description Insert description here
// You can write your code in this editor

if(waveCounter<waveMax){
with(instance_create_depth(50,50,1,obj_enemyShmup)){
	switch(other.wave){
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
			x=room_width-270;
			y=-32;
			path_start(pth_arc1,4,path_action_stop,false);
			break;
		case 3:
			x=270;
			y=-32;
			path_start(pth_arc2,4,path_action_stop,false);
			break;
		case 4:
			x=room_width+32;
			y=room_height/6;
			path_start(pth_wave1,4,path_action_stop,false);
			break;
		case 5:
			x=-32;
			//y=room_height/4;
			y=room_height/6;
			path_start(pth_wave2,4,path_action_stop,false);
			break;
	}
}
waveCounter++;
alarm[1]=room_speed*spawnTime;
}
else{
	alarm[0]=room_speed*waveTime;
	waveCounter=0;
}