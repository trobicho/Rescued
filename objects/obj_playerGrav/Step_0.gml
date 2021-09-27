/// @description Insert description here
// You can write your code in this editor


if(Health<=0){
	room_restart();
}

hsp=(keyboard_check(vk_right)-keyboard_check(vk_left))*spd*delta_time/1000000;
vsp+=delta_time/1000000*grav;

src_collisionPanic(obj_collider1);
if (place_meeting(x + hsp, y, obj_collider1)) {
	while (!place_meeting(x + sign(hsp), y, obj_collider1)) {
		x += sign(hsp);
	}
	hsp = 0;
}

if (place_meeting(x, y + vsp, obj_collider1)) {
	while (!place_meeting(x, y + sign(vsp), obj_collider1)) {
		y += sign(vsp);
	}
	vsp = 0;
	isJumping=false;
}


x+=hsp;
y+=vsp;
