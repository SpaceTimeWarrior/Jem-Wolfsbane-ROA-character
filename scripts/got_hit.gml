// got_hit is a script that is called when you get hit.
gauge_val-=.1;
if(gauge_val<0){
	gauge_val=.05;
	take_damage(player, -1, 50);
}