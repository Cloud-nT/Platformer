x = obj_player.x;
y = obj_player.y;

if(mouse_check_button_pressed(mb_left)) and (!instance_exists(obj_boomerang)){
	with(instance_create_layer(x,y,"Boomerang",obj_boomerang)){
		speed = 12;
		direction = other.image_angle;
		image_angle = direction;
	}
}

if(instance_exists(obj_boomerang)){
	image_alpha = 0;
} else {
	image_alpha = 1;
}
//x = x - lengthdir_x(recoil,image_angle);
//y = y - lengthdir_y(recoil,image_angle);