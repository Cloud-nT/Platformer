x = obj_player.x;
y = obj_player.y;

firing_delay = firing_delay - 1;
recoil = max(0,recoil-1);
if(mouse_check_button(mb_left)) and (firing_delay < 0){
	firing_delay = 15;
	recoil = 5;
	with(instance_create_layer(x,y,"Bullets",obj_boomerang)){
		speed = 7;
		direction = other.image_angle + random_range(-5,5);
		image_angle = direction;
	}
}

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);