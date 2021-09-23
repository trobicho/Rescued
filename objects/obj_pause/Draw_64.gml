/// @description Insert description here
// You can write your code in this editor
if(!pause) exit;

draw_set_alpha(0.5);
draw_set_color(c_black);
draw_rectangle(0,0,view_wport[0],view_hport[0],false);
draw_set_alpha(1);
draw_set_color(c_white);

/*if(pause){

}*/
if(map){
	draw_set_color(c_black);
	draw_sprite_tiled(spr_background,0,55,25);
	draw_set_color(c_grey);
	draw_rectangle(50,20,view_wport[0]-50,view_hport[0]-20,true);
	//draw_rectangle(55,25,view_wport[0]-55,view_hport[0]-25,false);
	draw_set_color(c_white);
	//draw_circle(obj_ship.x/room_width*(view_wport[0]-110)+55,obj_ship.y/room_height*(view_hport[0]-50)+25,4,false);
	draw_sprite_ext(spr_ship,0,obj_ship.x/room_width*(view_wport[0]-110)+55,obj_ship.y/room_height*(view_hport[0]-50)+25,0.3,0.3,obj_ship.dir-90,c_white,1);
	
	with(obj_star){
		switch(sprite_index){
			case spr_star1:
				draw_set_color(c_orange);
				break;
			/*case spr_star2:
				draw_set_color(c_blue);
				break;
			case spr_star3:
				draw_set_color(c_red);
				break;*/
		}
		draw_circle(x/room_width*(view_wport[0]-110)+55,y/room_height*(view_hport[0]-50)+25,5,false);
	}
	with(obj_planet){
		switch(sprite_index){
			case spr_planet1:
			case spr_planet2:
			case spr_planet3:
				draw_set_color(c_blue);
				break;
		}
		draw_circle(x/room_width*(view_wport[0]-110)+55,y/room_height*(view_hport[0]-50)+25,4,false);
	}
	with(obj_station){
		draw_set_color(c_white);
		draw_circle(x/room_width*(view_wport[0]-110)+55,y/room_height*(view_hport[0]-50)+25,4,false);
	}

}