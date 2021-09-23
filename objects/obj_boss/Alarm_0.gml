/// @description Insert description here
// You can write your code in this editor

//if(state)

if(!canShoot) exit;

counter1=0;
if(bossPhase==1)
	state=choose(1,2);
else if(bossPhase==2)
	state=choose(2,3);
else if(bossPhase==3)
	state=4;
//alarm[state]=1;
alarm[state]=1;
/*
switch(state){
	case 1:
		alarm[1]=1;
		break;
	case 2:
		alarm[2]=1;
		break;
	case 3:
		alarm[3]=1;
		break;
}
*/