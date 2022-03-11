//detect inputs
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(ord("W"));
key_fall = keyboard_check_pressed(ord("S"));
key_down = keyboard_check(ord("S"));

var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if(place_meeting(x,y+1,obj_wall)) or (place_meeting(x,y+1,obj_conveyor)){
	
	on_floor = true;
//jump	
	if(key_jump){
		vsp = -5;
	}
} else {
	
	on_floor = false;
//fall	
	if (key_fall){
		vsp += 5;
	}
	
}

//horizontal collision
if(place_meeting(x+hsp,y,obj_wall)){
	
	while(!place_meeting(x+sign(hsp),y,obj_wall)){
		x = x+sign(hsp);
	}
	
	hsp = 0;
}



//vertical collision
if(place_meeting(x,y+vsp,obj_wall)){
	
	while(!place_meeting(x,y+sign(vsp),obj_wall)){
		y = y+sign(vsp);
	}
	
	vsp = 0;
}
if(place_meeting(x,y+vsp,obj_conveyor)){
	vsp = 0;
	x -= 2;
}
y = y + vsp;
x = x + hsp;
//animation
if(on_floor == false){
	sprite_index = spr_player_air;	
} else {
	if( hsp == 0){
		sprite_index = spr_player;
	} else {
		sprite_index = spr_player_run;
		image_speed = 1;
	}
}

if(sign(hsp) != 0){
	image_xscale = sign(hsp);
}

if(keyboard_check_pressed(ord("R"))){
	game_restart();
}