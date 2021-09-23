/// @description Insert description here
// You can write your code in this editor
//pause=true;

dialogue=0;
done=false;
spriteEnd=false;
subimg=0;

//dialogues[Dialogues.INTRO,0]="Hello World";
/*----------OLD INTRO
dialogues[Dialogues.INTRO,0]="We need your help rescuing crew members of the USS-Intrepid.";
dialogues[Dialogues.INTRO,1]="We last heard of him 2 hours ago and it was an SOS signal.";
dialogues[Dialogues.INTRO,2]="Unfortunately we have no idea of its whereabout now, you're going to have to use your scanner (press S) to find lifeforms.";
dialogues[Dialogues.INTRO,3]="Also, be careful of your energy level. It will deplete over time, and when using the scanner too.";
dialogues[Dialogues.INTRO,4]="Well that's it for the briefing, good luck.";
*/

dialogues[Dialogues.INTRO,0]="Captain: \"Hello Ranger! We intercepted a distress signal coming from a ship, somewhere in the Sigma system.\"";
dialogues[Dialogues.INTRO,1]="Captain: \"Your mission is to rescue him.\"";
dialogues[Dialogues.INTRO,2]="Captain: \"We're counting on you Ranger!\"";
dialogues[Dialogues.INTRO,3]="Roger that!";

dialogues[Dialogues.INTRO2,0]="Captain: \"If you're running low on fuel it could be a good idea to visit the planets in the area,\n the locals might help.\"";
dialogues[Dialogues.INTRO2,1]="Captain: \"Oh and one last thing, your ship's sonar is activated by pressing an \"S\" shaped \nbutton on your dashboard.\"";
dialogues[Dialogues.INTRO2,2]="Captain: \"With it you will be able to locate the distress signals.\"";
dialogues[Dialogues.INTRO2,3]="Captain: \"The frequency you hear depends on how far you are from the signal. Low pitch means you're far.\"";
dialogues[Dialogues.INTRO2,4]="Captain: \"Good luck!\"";

dialogues[Dialogues.DEATH_BY_SUN,0]="You got too close to the star.";

dialogues[Dialogues.GAIN_ENERGY1,0]="On the planet you find some fuel (+20 Energy).";
dialogues[Dialogues.GAIN_ENERGY2,0]="This planet is full of fuel, you are able to fill your ship to maximum capacity \n(+100 Energy).";
dialogues[Dialogues.UPGRADE_SCANNER,0]="You find and engineer and he is willing to upgrade your scanner (+20% range).";
dialogues[Dialogues.CLUE_1,0]="You found a clue to one of the crew members whereabouts.";

dialogues[Dialogues.RUNOUT_O2,0]="You ran out of oxygen.";
dialogues[Dialogues.RUNOUT_ENERGY,0]="You ran out of energy and are now stranded in this solar system.";

dialogues[Dialogues.FOUND_PNJ1,0]="Crew 1: \"Hey, you found me!\"";
dialogues[Dialogues.FOUND_PNJ1,1]="Crew 1: \"Thank god I'm not going to die out here.\"";
dialogues[Dialogues.FOUND_PNJ1,2]="Crew 1: \"Did you find others? There was three emergency shuttles leaving \nthe mothership when I did.\"";

dialogues[Dialogues.FOUND_PNJ2,0]="Crew 2: \"Hey, down here, I'm stuck!\"";
dialogues[Dialogues.FOUND_PNJ2,1]="...";
dialogues[Dialogues.FOUND_PNJ2,2]="Crew 2: \"Phew that was a close one. Thank you.\"";
dialogues[Dialogues.FOUND_PNJ2,3]="Do you know what happened to your ship?";
dialogues[Dialogues.FOUND_PNJ2,4]="Crew 2: \"It was attaked by pirates I think. We changed course at some point \nso they must have taken control of helms.\"";

dialogues[Dialogues.FOUND_PNJ2,5]="Crew 2: \"Then we were ordered to evacuate through the coms.\"";
dialogues[Dialogues.FOUND_PNJ3,0]="Are you ok?";
dialogues[Dialogues.FOUND_PNJ3,1]="Crew 3: \"What. you think it's my first time being stranded with just an EVA suit?\"";
dialogues[Dialogues.FOUND_PNJ3,2]="You're welcome... Do you know something about the cargo ship you were on?";
dialogues[Dialogues.FOUND_PNJ3,3]="Crew 3: \"Yes. I saw the vessel going inside a strange thing from my emergency shuttle. \nIt looked like some kind of portal.\"";
dialogues[Dialogues.FOUND_PNJ3,4]="Crew 3: \"It was next to the gas giant.\"";

dialogues[Dialogues.FOUND_SHIP1,0]="Your scanner indicate there is a lifeform in there.";
dialogues[Dialogues.FOUND_SHIP1,1]="You decide to go in and search for it.";
dialogues[Dialogues.FOUND_SHIP2,0]="Your scanner indicate there is a lifeform in there.";
dialogues[Dialogues.FOUND_SHIP2,1]="You decide to go in and search for it.";
dialogues[Dialogues.FOUND_SHIP3,0]="Your scanner indicate there is a lifeform in there.";
dialogues[Dialogues.FOUND_SHIP3,1]="You decide to go in and search for it.";

dialogues[Dialogues.ENTERING_CARGO,0]="Crew: \"This is it. That's the mothership we were on.\"";
//dialogues[Dialogues.ENTERING_CARGO,1]="\"This is it. Thats the mothership we were on.\"";

dialogues[Dialogues.ENTERING_WARP1,0]="Crew 3: \"This is the portal I saw.\"";
dialogues[Dialogues.ENTERING_WARP1,1]="Crew 3: \"That's so strange, I've never seen anything like this.\"";
dialogues[Dialogues.ENTERING_WARP1,2]="Crew 2: \"What do we do? Do we go through?\"";
dialogues[Dialogues.ENTERING_WARP1,3]="Crew 1: \"Are you mad?. Going through implies that there is something on the other side \nand we don't even know that.\"";
dialogues[Dialogues.ENTERING_WARP1,4]="Crew 3: \"If there is the slightest chance that the cargo ship is in there, we have to take it.\"";
dialogues[Dialogues.ENTERING_WARP1,5]="Crew 3: \"This vessel wasn't targeted randomly.\"";
dialogues[Dialogues.ENTERING_WARP1,6]="Crew 3: \"We were carrying a new technology that could give us the power to harness \nthe energy from a star.\"";
dialogues[Dialogues.ENTERING_WARP1,7]="Crew 3: \"We can't let this technology fall in the wrong hands.\"";
dialogues[Dialogues.ENTERING_WARP1,8]="Ok, we go through, and if what you said is true we can except to get in a fight.";
dialogues[Dialogues.ENTERING_WARP1,9]="Everyone, strap on.";
dialogues[Dialogues.ENTERING_WARP1,10]="Here we go.";

dialogues[Dialogues.ENTERING_WARP2,0]="Let's go back home.";

dialogues[Dialogues.OUTRO,0]="Captain: You did great job ranger.";
dialogues[Dialogues.OUTRO,1]="Crew members: Thank you so much. We wouldn't have made it without you.";
dialogues[Dialogues.OUTRO,2]="It's nothing. See you some day maybe.";

dialogues[Dialogues.FOUND_TECH,0]="That must be it.";


line=0;