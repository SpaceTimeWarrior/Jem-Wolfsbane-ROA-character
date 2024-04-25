// hit_player is a script that runs code when you hit an enemy player.
var dama = 5;
switch(attack){
	case AT_BAIR:
	dama=15;
	break;
	case AT_DAIR:
	dama=25;
	break;
	case AT_DATTACK:
	dama=6;
	break;
	case AT_DSPECIAL:
	case 49:
	dama=500;
	break;
	case AT_DSTRONG:
	dama=14;
	break;
	case AT_DTILT:
	dama=14;
	break;
	case AT_FAIR:
	dama=10;
	break;
	case AT_FSPECIAL:
	dama=6;
	break;
	case AT_FSTRONG:
	dama=10;
	break;
	case AT_FTILT:
	dama=9;
	break;
	case AT_JAB:
	dama=10;
	break;
	case AT_NAIR:
	dama=10;
	break;
	case AT_NSPECIAL:
	dama=10;
	break;
	case AT_TAUNT:
	dama=0;
	break;
	case AT_UAIR:
	dama=3;
	break;
	case AT_USPECIAL:
	dama=8;
	break;
	case AT_USTRONG:
	dama=10;
	break;
	case AT_UTILT:
	dama=10;
	break;
	default:
	dama=5;
	break;
}
take_damage(hit_player_obj.player, player, ceil((dama*gauge_val)-dama) );
if(attack==AT_USPECIAL||attack==AT_FSPECIAL){
	gauge_val=0.05;
}else if(attack == AT_NSPECIAL){
	
}else{
	gauge_val+=.1;
	if(gauge_val>4){
		gauge_val=4;
	}
}