image_index += article_anim_speed;
if (free) vsp = min(vsp + article_gravity, article_max_fall_speed);
if (hsp != 0) hsp = sign(hsp) * max(0, abs(hsp) - my_article_friction);
var coli = collision_line(x-sprite_xoffset/2,y-sprite_yoffset/2, x+sprite_xoffset/2, y-sprite_yoffset/2, oPlayer, true, true)
if(coli!=noone){
	if(coli!=player_id){
		take_damage(coli.player,player_id.player,damm);
		should_die = true;
	}
}
anim_counter--;
if(anim_counter<=0){
	instance_destroy();
	return;
}
if should_die {
    instance_destroy();
    return;
}