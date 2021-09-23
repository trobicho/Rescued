/// @description Insert description here
// You can write your code in this editor
var nbStar=(room==Room1)?200:30;
repeat(nbStar){
	var X=irandom_range(0,room_width);
	var Y=irandom_range(0,room_height);
	
	with(instance_create_layer(X,Y,"Stars",obj_starBG)){
		sprite_index=choose(spr_starBG1,spr_starBG2,spr_starBG3);
		image_index=irandom_range(0,image_number-1);
		image_speed=random_range(0.5,1);
	}
}