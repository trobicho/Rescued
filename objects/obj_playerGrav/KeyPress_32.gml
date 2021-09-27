/// @description Insert description here
// You can write your code in this editor
if(!isJumping){
	//vsp-=delta_time/1000000*jumpSpd;
	alarm[0]=room_speed*maxJumpDelay;
	isJumping=true;
}