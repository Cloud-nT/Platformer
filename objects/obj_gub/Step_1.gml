x = obj_player.x;
y = obj_player.y;

firing_delay = firing_delay - 1;
if(mouse_check_button(mb_left)) and (firing_delay < 0){
	firing_delay = 0;
	with(instance_create_layer(x,y,"Bullets",obj_bullet)){
		
	}
}