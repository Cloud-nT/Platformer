if(isDead == 3){
	instance_destroy();
}

if(place_meeting(x+enemySpd,y,obj_wall)){
	image_xscale = -image_xscale;
	enemySpd = -enemySpd;
}

if(!place_meeting(x,y+1+enemyVsp,obj_wall)){
	enemyVsp += enemyGrv;
} else {
	enemyVsp = 0;
}

y += enemyVsp;

x += enemySpd;

if(place_meeting(x,y,obj_boomerang)){
	sprite_index = spr_enemy_dead;
	isDead += 1;
}