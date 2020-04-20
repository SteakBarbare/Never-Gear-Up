draw_set_halign(fa_center);

switch(targetedPart){
	case 0:
		targetedPart = "Head";
		break;
	case 1:
		targetedPart = "Body";
		break;
	case 2:
		targetedPart = "Right Arm";
		break;
	case 3:
		targetedPart = "Left Arm";
		break;
	case 4:
		targetedPart = "Right Leg";
		break;
	case 5:
		targetedPart = "Left Leg";
		break;
}

// Text Alpha and deletion

if(alpha < 1){
	alpha += 0.05;
	draw_set_alpha(alpha);
}else if(alpha < 2){
	alpha += 0.05;
}else if(alpha < 3){
	alpha += 0.05;
	draw_set_alpha(3 - alpha);
}else{
	draw_set_alpha(3 - alpha);
	instance_destroy();
}

if(alpha < 0.5){
	if(isDestroyed){
		textScale += 0.3;
	}else{
		textScale += 0.2;
	}
}else{
	if(isDestroyed){
		if(textScale > 1.5){
			textScale -= 0.2;
		}
	}else{
		if(textScale > 1){
			textScale -= 0.1;
		}
	}
}

// Text movement

posY -= vertSpd;
if(vertSpd > 0.5){
	vertSpd -= 0.05;
}

// Physical damage Text color
if(damageTaken != 0){
	// Physical damage text drawing & parameters reset
	if(isDestroyed || isCritical){
		draw_set_color(c_red);
	}else{
		draw_set_color(c_yellow);
	}
	draw_text_transformed(x, posY-15, targetedPart, textScale, textScale, 0);
	
	draw_set_color(c_white);
	if(is_string(damageTaken)){
		draw_set_color(c_yellow);
	}
	
	draw_text_transformed(x, posY, string(damageTaken), textScale, textScale, 0);
	
}

draw_set_color(c_white);
draw_set_alpha(1);