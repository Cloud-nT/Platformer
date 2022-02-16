//detect inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if(place_meeting(x,y+1,obj_wall)){
	
	on_floor = true;
	
	if(key_jump){
		vsp = -5;
	}
} else {
	on_floor = false;
}

//horizontal collision
if(place_meeting(x+hsp,y,obj_wall)){
	
	while(!place_meeting(x+sign(hsp),y,obj_wall)){
		x = x+sign(hsp);
	}
	
	hsp = 0;
}

x = x + hsp;

//vertical collision
if(place_meeting(x,y+vsp,obj_wall)){
	
	while(!place_meeting(x,y+sign(vsp),obj_wall)){
		y = y+sign(vsp);
	}
	
	vsp = 0;
}

y = y + vsp;

//animation
if(on_floor == false){
	if(sign(vsp) > 0){
		sprite_index = spr_player_fall;
		image_speed = 1;
	} else {
		sprite_index = spr_player_jump;
		image_speed = 0;
	}
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