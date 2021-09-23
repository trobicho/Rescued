
shootRate=1;
canMove=false;
canShoot=true;
isInLevel=true;
dir=irandom_range(0,360);
if(isInLevel){
	alarm[0]=room_speed*1.5;
	canShoot=false;
}
else{
	canShoot=true;
	canMove=true;
}