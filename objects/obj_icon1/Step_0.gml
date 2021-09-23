/// @description Insert description here
// You can write your code in this editor
if(pause) exit;

image_angle=point_direction(obj_ship.x,obj_ship.y,pnjX,pnjY)-90;

var shipX=obj_ship.x;
var shipY=obj_ship.y;
var inclination=point_direction(shipX,shipY,pnjX,pnjY);
var camX=camera_get_view_x(view_camera[0]);
var camY=camera_get_view_y(view_camera[0]);
var camW=camera_get_view_width(view_camera[0]);
var camH=camera_get_view_height(view_camera[0]);

var DirX=(pnjX<shipX)?-1:1;
//var DirY=(pnjY<shipY)?-1:1;
var xx=shipX;
var yy=shipY;
while(xx>camX+20 && xx<camX+camW-20 && yy>camY+20 && yy<camY+camH-20){
	//if(DirX>0){
		xx+=DirX;
		yy=tan(degtorad(-inclination))*(xx-shipX)+shipY;
		if(yy>camY+camH-20)
			yy=camY+camH-20;
		else if(yy<camY+20)
			yy=camY+20;
		//yy=tan(degtorad(inclination));
	//}
	/*else{
		yy+=tan(-inclination);
	}*/
}
x=xx;
y=yy;