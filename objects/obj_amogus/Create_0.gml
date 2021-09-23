/// @description Insert description here
// You can write your code in this editor

x_speed=0;
y_speed=0;
spd=10;
shootRate=1;
canMove=false;
canShoot=true;
isInLevel=false;
dir=irandom_range(0,360);
if(isInLevel){
	alarm[0]=room_speed*1.5;
	canShoot=false;
}
else{
	canShoot=true;
	canMove=true;
}