// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 1;
user_event(14);
if(attack == 49||attack==AT_DSPECIAL){
	TL_FLAG=true;
}
if(TL_FLAG==true){
if(TL_COUNTER ==-1){
		if(attack!=49){
			TL_DAMAGE = 200;	
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
			if(get_player_damage( player )>=500){
				x=-1000;
				y=-1000;
				attack=AT_JAB;
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
if (phone_cheats[cheat_perma_final_smash]) {fs_charge = 200;}