speed -= 0.1;
image_angle += 5;

if(x < 0) or (x > 736) or (y < 0 ) or (y > 640){
	if(speed < -9){
		instance_destroy();
	}
}