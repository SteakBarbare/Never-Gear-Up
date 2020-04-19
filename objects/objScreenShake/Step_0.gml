if(tinyShake > 0){
	tinyShake -= 1;
	if(tinyShake <= 8){
		view_yport[0]=random_range(-5, 5);
		view_xport[0]=random_range(-5, 5);
	}else{
		view_yport[0]=random_range(-(5 + (tinyShake - 7)), 5 + (tinyShake - 7));
		view_xport[0]=random_range(-(5 + (tinyShake - 7)), 5 + (tinyShake - 7));
	}
}
// Screen Shake Depending on Attack Dir
else if(heavyShake > 0){
	heavyShake--;
	if(heavyShake <= 7){
		view_yport[0]=random_range(-20, 20);
		view_xport[0]=random_range(-20, 20);
	}else{
		view_yport[0]=random_range(-50 - (20 * (7 - heavyShake)), 50 - (20 * (7 - heavyShake)));
		view_xport[0]=random_range(-50 - (20 * (7 - heavyShake)), 50 - (20 * (7 - heavyShake)));
	}
}else{
	if view_xport[0] < 0 { view_xport[0]++ }
	if view_xport[0] > 0 { view_xport[0]-- }
	if view_yport[0] < 0 { view_yport[0]++ }
	if view_yport[0] > 0 { view_yport[0]-- }
}