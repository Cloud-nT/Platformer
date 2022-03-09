speed -= 0.1;
image_angle += 5;

if(speed < 0){
	direction = point_direction(x,y,obj_player.x,obj_player.y) - 180;
	if(place_meeting(x,y,obj_player)){
		instance_destroy();
	}
}
