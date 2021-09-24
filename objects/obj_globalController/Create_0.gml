/// @description Insert description here
// You can write your code in this editor
randomize();

globalvar map;
map=false;
globalvar pause;
pause=false;
globalvar diag;
diag=false;
globalvar phase;
phase=1;
globalvar firstTime;
firstTime=true;

globalvar ShipX;
ShipX=7136;
globalvar ShipY;
ShipY=6400;
globalvar ShipHealth;
ShipHealth=100;
globalvar shipDied;
shipDied=false;

globalvar audioFume;
audioFume=false;

globalvar winH;
globalvar winW;
winH=window_get_height();
winW=window_get_width();

globalvar camX;
globalvar camY;
globalvar camW;
globalvar camH;

enum Dialogues{
	INTRO,
	INTRO2,
	OUTRO,
	DEATH_BY_SUN,
	GAIN_ENERGY1,
	GAIN_ENERGY2,
	UPGRADE_SCANNER,
	CLUE_1,
	CLUE_2,
	CLUE_PNJ1,
	CLUE_PNJ2,
	CLUE_PNJ3,
	CLUE_PNJ4,
	RUNOUT_O2,
	RUNOUT_ENERGY,
	NO_HEALTH,
	FOUND_PNJ1,
	FOUND_PNJ2,
	FOUND_PNJ3,
	FOUND_SHIP1,
	FOUND_SHIP2,
	FOUND_SHIP3,
	ENTERING_CARGO,
	ENTERING_WARP1,
	ENTERING_WARP2,
	FOUND_TECH
}

globalvar foundCube;
foundCube=false;

globalvar guiH;
globalvar guiW;
guiH=720;
guiW=1280;
display_set_gui_size(guiW,guiH);
//window_set_fullscreen(true);

if(room!=Shmup){
view_set_wport(0,display_get_width());
view_set_hport(0,display_get_height());
view_wport[0]=display_get_width();
view_hport[0]=display_get_height();
//camera_set_view_size(view_camera[0],view_wport[0],view_hport[0]);
}
if(room==Intro || room==Outro || room==Title){
	camera_set_view_size(view_camera[0],view_wport[0],view_hport[0]);
}
//camera_set_view_size(view_camera[0],window_get_width(),window_get_height());
camera_set_view_border(view_camera[0],view_wport[0]*4/5,view_wport[0]*4/5);
//camera_set_view_border(view_camera[0],display_get_height()*4/5,display_get_height()*4/5);


camX=camera_get_view_x(view_camera[0]);
camY=camera_get_view_y(view_camera[0]);
camW=camera_get_view_width(view_camera[0]);
camH=camera_get_view_height(view_camera[0]);



if(room==Room1){
	/*var X=irandom_range(0,room_width);
	var Y=irandom_range(0,room_height);
	with(instance_create_depth(X,Y,-1,obj_brokenShip)){
		if(place_meeting(x,y,obj_star) || place_meeting(x,y,obj_planet) || place_meeting(x,y,obj_station)){
			x=irandom_range(0,room_width);
			y=irandom_range(0,room_height);
		}
	}*/
	
	audio_sound_gain(snd_noise,0.1,0);
	audio_play_sound(snd_noise,1,true);
	alarm[0]=1;
}

instance_deactivate_object(obj_dialogue);

//instance_deactivate_object(obj_pnj1);