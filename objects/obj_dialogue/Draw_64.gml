/// @description Insert description here
// You can write your code in this editor
if(subimg==0){
	audio_sound_gain(snd_dialogue1,0.5,0);
	audio_play_sound(snd_dialogue1,1,false);
}
if(subimg<sprite_get_number(spr_textBox)-1){
	subimg++;
	spriteEnd=true;
	//draw_self();
	//sprite_index=spr_textBox;
	//image_speed=1;
	//image_index=0;
}
//draw_sprite_ext(spr_textBox,subimg,view_wport[0]/8,view_hport[0]/8*6,(view_wport[0]/8*6)/sprite_get_width(spr_textBox),(view_hport[0]/2)/sprite_get_height(spr_textBox),0,c_white,1);
draw_sprite_ext(spr_textBox,subimg,guiW/2,540,(guiW-200)/sprite_get_width(spr_textBox),guiH/5/sprite_get_height(spr_textBox),0,c_white,1);
if(spriteEnd){
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	//draw_rectangle(100,window_get_height()-300,window_get_width()-100,window_get_height()-50,3);
	//draw_text(view_wport[0]/8*1.2,view_hport[0]/6*4.6,dialogues[dialogue,line]);
	draw_text(160,570,dialogues[dialogue,line]);
}