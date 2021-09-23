/// @description Insert description here
// You can write your code in this editor
if(room==Room1){
	var hp=obj_ship.Health;
	draw_set_alpha(1);
	draw_set_color(c_green);
	draw_text(35,685,"Energy");
	draw_healthbar(50,590,65,680,hp,c_white,c_green,c_green,3,true,true);
}
else if(room==Platformer1 || room==Platformer3 || room==Platformer2  || room==Platformer4){
	var hp=obj_player.Health;
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_text(35,685,"O2");
	draw_healthbar(50,590,65,680,hp,c_white,c_green,c_green,3,false,true);
}
else if(room==Shmup){
	var hp=obj_ship.shmupHealth;
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_text(5,guiH-20,"Hull");
	draw_healthbar(5,guiH-100,15,guiH-30,hp,c_white,c_white,c_white,3,false,true);
	if(instance_exists(obj_boss)){
		var Hp=obj_boss.bossHealth;
		draw_set_color(c_red);
		draw_set_halign(fa_left);
		draw_text(0,40,"Pirate Ship");
		draw_healthbar(0,10,guiW,30,Hp,c_red,c_red,c_red,0,false,true);
		draw_set_halign(fa_left);
	}
}