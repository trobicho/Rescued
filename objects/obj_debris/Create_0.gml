/// @description Insert description here
// You can write your code in this editor

//dir=random_range(0,360);
var XX=random_range(camX,camX+camW);
var YY=random_range(camX,camY+camH);
dir=point_direction(x,y,XX,YY);
angularSpd=random_range(1,5);
spd=random_range(5,10);
var i=irandom_range(0,1000);
if(i<100)
	sprite_index=spr_debris3;
else
sprite_index=choose(spr_debris1,spr_debris2);