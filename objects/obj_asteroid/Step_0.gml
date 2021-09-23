/// @description Insert description here
// You can write your code in this editor
if(pause || diag) exit;

image_angle+=angularSpd*delta_time/60000;
var instSpd=delta_time/60000*spd;
x+=lengthdir_x(instSpd,dir);
y+=lengthdir_y(instSpd,dir);