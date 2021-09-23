/// @description Insert description here
// You can write your code in this editor
if(pause) exit;

if(r<=maxR){
	draw_set_circle_precision(64);
	draw_set_color(c_green)
	draw_set_alpha(0.5);
	draw_circle(x,y,r,true);
	draw_set_alpha(1);
	r+=delta_time/60000*spd;
}
else
	instance_destroy(self);