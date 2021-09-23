/// @description Insert description here
// You can write your code in this editor
if(stretching && lerping){
	var Dir=(point_direction(startX,startY,obj_ship.x,obj_ship.y)+90)%360;
	image_angle-=angle_difference(image_angle,Dir)*delta_time/60000*0.1;
}
if(stretching && !hitPlayer){
	x=startX;
	y=startY;
	image_yscale+=delta_time/60000*spd;
}