/// @description Insert description here
// You can write your code in this editor

if(room!=Shmup){
	view_set_wport(0,display_get_width());
	view_set_hport(0,display_get_height());
	view_wport[0]=display_get_width();
	view_hport[0]=display_get_height();
}
if(room==Intro || room==Outro || room==Title){
	camera_set_view_size(view_camera[0],view_wport[0],view_hport[0]);
}

camera_set_view_border(view_camera[0],view_wport[0]*4/5,view_wport[0]*4/5);
//camera_set_view_size(view_camera[0],view_wport[0],view_hport[0]);
camX=camera_get_view_x(view_camera[0]);
camY=camera_get_view_y(view_camera[0]);
camW=camera_get_view_width(view_camera[0]);
camH=camera_get_view_height(view_camera[0]);