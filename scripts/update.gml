// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 1;
user_event(14);
if(attack == 49||attack==AT_DSPECIAL){
	TL_FLAG=true;
}
//print_debug(string(gauge_val));
if(TL_FLAG==true){
if(TL_COUNTER ==-1){
		if(attack!=49){
			TL_DAMAGE = 200;
			if(gauge_val>3){
				TL_DAMAGE=100;
			}	
		}else{
			TL_DAMAGE = 50;
		}	
		if(attack == 49||attack==AT_DSPECIAL){
			TL_COUNTER =60;	
		}
	}else{
		if(!(state == PS_ATTACK_AIR||state == PS_ATTACK_GROUND)){
			TL_COUNTER--;
		}
		
		if(TL_COUNTER <=0){
			take_damage(player,player,TL_DAMAGE);
			gauge_val=0.5;
			if(get_player_damage( player )>=500){
				//x=-1000;
				//y=-1000;
				
				attack=AT_JAB;
				user_event(6);
			}
			TL_COUNTER=-1;
			TL_FLAG=false;
		}
	}
}
//Amber hug compatibility
try{
if (amber_startHug == true){
    with (amber_herObj){
        //Set the window values for Amber's hugging.
	//setup
	set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
	set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
	set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, asset_get("hurtbox"));

        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
 	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 9);
	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_diamond_collect"));
	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME,8);
	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED,0);
	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE,1);       
	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED,0);
	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE,0);

	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 9);
	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 30);
	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 10);
	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 3);
	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX,0);
	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED,0);
	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED_TYPE,0);

	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 9);
	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 14);
	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED,0);
	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED_TYPE,0);
        //Important. Puts Amber in startup hug state (2).
        //Editing this variable not recommended
        amberHugState = 2; 
    }
    oPlayerHugAmberState = 2;
    

    amber_startHug = false;
}
}catch(e){

}
//final smash compatability
if (phone_cheats[cheat_perma_final_smash]) {fs_charge = 200;}
if (phone_cheats[cheat_maximum_magic]) {gauge_val = 4;}
if (phone_cheats[cheat_magic_double]) {TL_MBBool = true;}else{TL_MBBOOL = false;}
//kirby copy compatability
TCG_Kirby_Copy=1
//trummel cpmpatability
if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 29;
    trummelcodecsprite1 = sprite_get("_pho_example_speaker");
    trummelcodecsprite2 = sprite_get("_pho_example_speaker");
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "Jem Wolfsbane";
    trummelcodecline[page,2] = "...don't think I";
    trummelcodecline[page,3] = "Heard of her...";
    trummelcodecline[page,4] = "Found the wiki she";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "is in...";
    trummelcodecline[page,2] = "Jem Wolfsbane or";
    trummelcodecline[page,3] = "Should I say";
    trummelcodecline[page,4] = "Jem Lightbringer";
    page++; 
    //Page 2
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "The Former queen";
    trummelcodecline[page,2] = "of Eather...";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    //Page 3
    trummelcodecspeaker[page] = 4;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "What do you mean";
    trummelcodecline[page,2] = "former I still am";
    trummelcodecline[page,3] = "the current queen";
    trummelcodecline[page,4] = "";
    page++; 
    //Page 4
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Let me continue";
    trummelcodecline[page,2] = "after you unwillingly";
    trummelcodecline[page,3] = "faked your death your";
    trummelcodecline[page,4] = "sister took the throne";
    page++; 
    //Page 5
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "and plunged Eather in";
    trummelcodecline[page,2] = "darkness. your ";
    trummelcodecline[page,3] = "daughter has started";
    trummelcodecline[page,4] = "helping your husband";
    page++; 
    //Page 6
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "build the temporal";
    trummelcodecline[page,2] = "knife project you";
    trummelcodecline[page,3] = "started.";
    trummelcodecline[page,4] = "";
    page++; 
    //Page 7
    trummelcodecspeaker[page] = 4;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "Crystal is only 5";
    trummelcodecline[page,2] = "that shouldn't be";
    trummelcodecline[page,3] = "allowed";
    trummelcodecline[page,4] = "";
    page++; 
    //Page 8
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "I am going to break";
    trummelcodecline[page,2] = "this to you since you";
    trummelcodecline[page,3] = "left your universe. time";
    trummelcodecline[page,4] = "goes by at a faster rate";
    page++; 
    //Page 9
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "... to be more specific";
    trummelcodecline[page,2] = "you have been gone for";
    trummelcodecline[page,3] = "the equivalent of 10 years";
    trummelcodecline[page,4] = "I would feel sorry for you";
    //Page 10
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "If it were not for your";
    trummelcodecline[page,2] = "down special.";
    trummelcodecline[page,3] = "that is broken and ";
    trummelcodecline[page,4] = "unforgivable";
    page++; 
    //Page 11
    trummelcodecspeaker[page] = 4;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "down special? do you";
    trummelcodecline[page,2] = "mean the temporal light";
    trummelcodecline[page,3] = "spell. while it is powerful";
    trummelcodecline[page,4] = "there is drawbacks to using";
    page++; 
    //Page 12
    trummelcodecspeaker[page] = 4;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "it. it isn't just use it";
    trummelcodecline[page,2] = "and all your problems go";
    trummelcodecline[page,3] = "away. the biggest is the";
    trummelcodecline[page,4] = "energy requirement.";
    page++; 
    //Page 13
    trummelcodecspeaker[page] = 4;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "without serious injury";
    trummelcodecline[page,2] = "and I could maybe only";
    trummelcodecline[page,3] = "use it 3 times maximum";
    trummelcodecline[page,4] = "without dying. in addition";
    page++; 
    //Page 14
    trummelcodecspeaker[page] = 4;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "it severely debuffs all";
    trummelcodecline[page,2] = "my attacks.";
    trummelcodecline[page,3] = "Is crystal still alive";
    trummelcodecline[page,4] = "and fine?";
    page++; 
    //Page 14
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "I will say this she is";
    trummelcodecline[page,2] = "still alive";
    trummelcodecline[page,3] = "your husband renamed her";
    trummelcodecline[page,4] = "to Light to confuse Brier";
    page++; 
    //Page 15
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "(wispering) is that really";
    trummelcodecline[page,2] = "what happened and shouldn't";
    trummelcodecline[page,3] = "we be respectful";
    trummelcodecline[page,4] = "she is royalty?";
    page++; 
    //Page 16
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "(wispering)it is a half";
    trummelcodecline[page,2] = "truth I don't actually";
    trummelcodecline[page,3] = "know what happened to";
    trummelcodecline[page,4] = "crystal I assumed from";
    page++; 
    //Page 17
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "(wispering) the wiki";
    trummelcodecline[page,2] = "also jem dislikes it";
    trummelcodecline[page,3] = "when people act not";
    trummelcodecline[page,4] = "like themselves after";
    page++; 
    //Page 18
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "(wispering) learning";
    trummelcodecline[page,2] = "about who she is";
    trummelcodecline[page,3] = "also she technically";
    trummelcodecline[page,4] = "isn't a royal anymore";
    page++; 
    //Page 19
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "(wispering) oh";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    //Page 20
    trummelcodecspeaker[page] = 4;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "you should know";
    trummelcodecline[page,2] = "I can read minds and";
    trummelcodecline[page,3] = "I do have very good hearing";
    trummelcodecline[page,4] = "Alto is it what you where";
    page++; 
    //Page 21
    trummelcodecspeaker[page] = 4;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "just thinking of";
    trummelcodecline[page,2] = "was funny.To think I am";
    trummelcodecline[page,3] = "in a video game";
    trummelcodecline[page,4] = "";
    page++; 
    //Page 22
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "it is true, you are in";
    trummelcodecline[page,2] = "a game called rivals of";
    trummelcodecline[page,3] = "aether. and you originate";
    trummelcodecline[page,4] = "from the series called";
    page++; 
    //Page 23
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Temporal Light";
    trummelcodecline[page,2] = "the wiki never defined it";
    trummelcodecline[page,3] = "what is Eather";
    trummelcodecline[page,4] = "";
    page++; 
    //Page 24
    trummelcodecspeaker[page] = 4;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "I feared this Eather wasn't";
    trummelcodecline[page,2] = "always called that it was";
    trummelcodecline[page,3] = "originally called mars before";
    trummelcodecline[page,4] = "terraformation";
    page++; 
    //Page 25
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "mars I didn't think that was";
    trummelcodecline[page,2] = "the case you don't look green";
    trummelcodecline[page,3] = "or alien.well at least no more";
    trummelcodecline[page,4] = "than this world";
    page++; 
    //Page 26
    trummelcodecspeaker[page] = 4;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "well If I do you would be the";
    trummelcodecline[page,2] = "first to know";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    //Page 27
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "what does she mean by that";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    //Page 28
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "she has limited ability to";
    trummelcodecline[page,2] = "use teleportation magic.as";
    trummelcodecline[page,3] = "can teleport small objects or";
    trummelcodecline[page,4] = "one large one. though her";
    page++;
    //Page 29
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "preference is fire magic";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    //repeat...
}