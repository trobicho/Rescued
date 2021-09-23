/// @description Insert description here
// You can write your code in this editor

audio_sound_gain(snd_dialogue2,0.2,0);
audio_play_sound(snd_dialogue2,1,false);
if(line==array_length_2d(dialogues,dialogue)-1){
	diag=false;
	done=true;
	subimg=0;
	spriteEnd=false;
	switch(dialogue){
		case Dialogues.INTRO:
			obj_intro.launched=true;
			break;
		case Dialogues.OUTRO:
			room_goto(Credit);
			break;
		case Dialogues.DEATH_BY_SUN:
			room_restart();
			break;
		case Dialogues.GAIN_ENERGY1:
			obj_ship.Health+=20;
			break;
		case Dialogues.GAIN_ENERGY2:
			obj_ship.Health=100;
			break;
		case Dialogues.RUNOUT_O2:
			room_restart();
			break;
		case Dialogues.RUNOUT_ENERGY:
			room_restart();
			break;
		case Dialogues.FOUND_PNJ1:
			phase=2;
			room_goto(Room1);
			break;
		case Dialogues.FOUND_PNJ2:
			phase=3;
			room_goto(Room1);
			break;
		case Dialogues.FOUND_PNJ3:
			phase=4;
			room_goto(Room1);
			break;
		case Dialogues.FOUND_SHIP1:
			room_goto(Platformer1);
			break;
		case Dialogues.FOUND_SHIP2:
			room_goto(Platformer2);
			break;
		case Dialogues.FOUND_SHIP3:
			room_goto(Platformer3);
			break;
		case Dialogues.ENTERING_CARGO:
			room_goto(Platformer4);
			break;
		case Dialogues.ENTERING_WARP1:
			//audio_play_sound(snd_warp,1,false);
			room_goto(Shmup);
			break;
		case Dialogues.ENTERING_WARP2:
			//audio_play_sound(snd_warp,1,false);
			room_goto(Outro);
			break;
		case Dialogues.FOUND_TECH:
			room_goto(Room2);
			break;
	}
	instance_deactivate_object(self);
}
else
	line++;