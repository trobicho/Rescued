/// @description Insert description here
// You can write your code in this editor
if(!canShoot) exit;

audio_sound_gain(snd_laser,0.3,0);
audio_play_sound(snd_laser,1,false);
with(instance_create_depth(x,y+30,1,obj_laser)){
	dir=point_direction(x,y,obj_ship.x,obj_ship.y);
	startX=x;
	startY=y;
	if(other.counter1>=4)
		lerping=true;
	image_angle=(dir+90)%360;
}
counter1++;
alarm[4]=room_speed*random_range(2,4);