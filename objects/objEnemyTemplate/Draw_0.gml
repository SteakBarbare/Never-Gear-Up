if(flash > 2){
	gpu_set_fog(true, c_black, 0, 0);
	draw_self();
	gpu_set_fog(false, c_black, 0, 0);
	flash--;
}else if (flash > 0) {
	 gpu_set_fog(true, c_white, 0, 0);
	 draw_self();
	 gpu_set_fog(false, c_white, 0, 0);
	flash--;
}else{
   draw_self();
}


