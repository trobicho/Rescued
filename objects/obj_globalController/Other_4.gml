/// @description Insert description here
// You can write your code in this editor

switch(room){
	case Room1:
	case Room2:
		audio_sound_gain(snd_noise,0.1,0);
		audio_play_sound(snd_noise,1,true);
		audio_sound_gain(snd_musicExplo,1.5,0);
		audio_stop_sound(snd_musicPlatform);
		audio_stop_sound(snd_musicShmup1);
		if(!audio_is_playing(snd_musicExplo))
			audio_play_sound(snd_musicExplo,2,true);
		break;
	case Shmup:
		audio_stop_sound(snd_noise);
		audio_sound_gain(snd_musicShmup1,1.5,0);
		audio_stop_sound(snd_musicPlatform);
		audio_stop_sound(snd_musicExplo);
		if(!audio_is_playing(snd_musicShmup1))
			audio_play_sound(snd_musicShmup1,2,true);
		break;
	case Platformer1:
	case Platformer2:
	case Platformer3:
	case Platformer4:
		audio_stop_sound(snd_noise);
		audio_sound_gain(snd_musicPlatform,1.5,0);
		audio_stop_sound(snd_musicExplo);
		audio_stop_sound(snd_musicShmup1);
		if(!audio_is_playing(snd_musicPlatform))
			audio_play_sound(snd_musicPlatform,2,true);
		break;
}

winH=window_get_height();
winW=window_get_width();

switch(room){
	case Shmup:
		surface_resize(application_surface,room_width,room_height);
		guiW=2/3*640;
		guiH=2/3*768;
		display_set_gui_size(guiW,guiH);
		break
	default:
		if(winW>0 && winH>0)
			surface_resize(application_surface,winW,winH);
		guiW=1280;
		guiH=720;
		display_set_gui_size(guiW,guiH);
		break;
}
if(room!=Shmup){
view_set_wport(0,display_get_width());
view_set_hport(0,window_get_height());
view_wport[0]=display_get_width();
view_hport[0]=display_get_height();
//camera_set_view_size(view_camera[0],view_wport[0],view_hport[0]);
}
if(room==Intro || room==Outro || room==Title){
	camera_set_view_size(view_camera[0],view_wport[0],view_hport[0]);
}
//camera_set_view_size(view_camera[0],view_wport[0],view_hport[0]);



if(!shipDied){
if(room==Room1){
	obj_ship.x=ShipX;
	obj_ship.y=ShipY;
	obj_ship.Health=ShipHealth;
}
}
else
	shipDied=false;

if(phase!=1 && room==Room1)
	scr_changePhase(phase);


/*
if(room==Shmup){
	view_set_wport(view_camera[0],640);
	view_set_hport(view_camera[0],768);
}
else{
*/
//}

camX=camera_get_view_x(view_camera[0]);
camY=camera_get_view_y(view_camera[0]);
camW=camera_get_view_width(view_camera[0]);
camH=camera_get_view_height(view_camera[0]);

camera_set_view_border(view_camera[0],view_wport[0]*4/5,view_wport[0]*4/5);
instance_deactivate_object(obj_dialogue);

if(room==Room1 && firstTime){
	firstTime=false;
	instance_activate_object(obj_dialogue);
	with(obj_dialogue){
		dialogue=Dialogues.INTRO2;
		line=0;
		diag=true;
	}
}

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