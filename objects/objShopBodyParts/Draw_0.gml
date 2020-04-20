var clickLeft = mouse_check_button(mb_left);

draw_self();

if(point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), 111, 868, 345, 939))
{
	draw_sprite(sprWorkshopStatsButtonShop, 2, 0, 0);
	if(clickLeft)
	{
		var menu = instance_find(objWorkshopInterface, 0).id;	
		menu.step = 1;
		instance_destroy(id);
	}
}
else
{
	draw_sprite(sprWorkshopStatsButtonShop, 1, 0, 0);
}

//color stats
var colorGreen = make_color_rgb(90, 255, 0);
var colorOrange = make_color_rgb(255, 150, 0);
var colorRed = make_color_rgb(255, 50, 50);

var c = colorGreen;

if(point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), 474, 237, 612, 387)){
	
	if(clickLeft)
	{
		image_index = 1;
		
	}
		
}else if(point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), 432, 420, 570, 570)){
	if(clickLeft)
	{
		image_index = 2;
		
	}
}else if(point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), 276, 480, 414, 630)){
	if(clickLeft){
		image_index = 3;
		
	}
}else if(point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), 312, 732, 450, 882)){
	if(clickLeft){
		image_index = 4;
		
	}
}else if(point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), 600, 543, 738, 693)){
	if(clickLeft){
		image_index = 5;
		
	}
}else if(point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), 528, 732, 666, 882)){
	if(clickLeft){
		image_index = 6;
		
	}
}
show_debug_message(window_mouse_get_x());
show_debug_message(window_mouse_get_y());

switch(image_index)
{
	case 1:
		//Junk
		draw_text_transformed_color(326, 101, shopParts[2, 0], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(410, 101, shopParts[3, 0], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(492, 101, shopParts[4, 0], 0.7, 0.7, 0, c, c, c, c, 1);
		
		//Defaut
		draw_text_transformed_color(326, 158, shopParts[2, 1], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(410, 158, shopParts[3, 1], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(492, 158, shopParts[4, 1], 0.7, 0.7, 0, c, c, c, c, 1);
		
		//D3str0y3r
		draw_text_transformed_color(326, 212, shopParts[2, 2], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(410, 212, shopParts[3, 2], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(492, 212, shopParts[4, 2], 0.7, 0.7, 0, c, c, c, c, 1);
		
		
		break;
		
	case 2:
		//Junk
		draw_text_transformed_color(326, 101, shopParts[2, 3], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(410, 101, shopParts[3, 3], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(492, 101, shopParts[4, 3], 0.7, 0.7, 0, c, c, c, c, 1);
		
		//Defaut
		draw_text_transformed_color(326, 158, shopParts[2, 4], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(410, 158, shopParts[3, 4], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(492, 158, shopParts[4, 4], 0.7, 0.7, 0, c, c, c, c, 1);
		
		//D3str0y3r
		draw_text_transformed_color(326, 212, shopParts[2, 5], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(410, 212, shopParts[3, 5], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(492, 212, shopParts[4, 5], 0.7, 0.7, 0, c, c, c, c, 1);
		
		
		break;
		
	case 3:
		//Junk
		draw_text_transformed_color(326, 101, shopParts[2, 6], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(410, 101, shopParts[3, 6], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(492, 101, shopParts[4, 6], 0.7, 0.7, 0, c, c, c, c, 1);
		
		//Defaut
		draw_text_transformed_color(326, 158, shopParts[2, 7], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(410, 158, shopParts[3, 7], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(492, 158, shopParts[4, 7], 0.7, 0.7, 0, c, c, c, c, 1);
		
		//D3str0y3r
		draw_text_transformed_color(326, 212, shopParts[2, 8], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(410, 212, shopParts[3, 8], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(492, 212, shopParts[4, 8], 0.7, 0.7, 0, c, c, c, c, 1);
		
		
		break;
		
	case 4:
		//Junk
		draw_text_transformed_color(326, 101, shopParts[2, 9], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(410, 101, shopParts[3, 9], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(492, 101, shopParts[4, 9], 0.7, 0.7, 0, c, c, c, c, 1);
		
		//Defaut
		draw_text_transformed_color(326, 158, shopParts[2, 10], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(410, 158, shopParts[3, 10], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(492, 158, shopParts[4, 10], 0.7, 0.7, 0, c, c, c, c, 1);
		
		//D3str0y3r
		draw_text_transformed_color(326, 212, shopParts[2, 11], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(410, 212, shopParts[3, 11], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(492, 212, shopParts[4, 11], 0.7, 0.7, 0, c, c, c, c, 1);
		
		
		break;
		
	case 5:
		//Junk
		draw_text_transformed_color(326, 101, shopParts[2, 6], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(410, 101, shopParts[3, 6], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(492, 101, shopParts[4, 6], 0.7, 0.7, 0, c, c, c, c, 1);
		
		//Defaut
		draw_text_transformed_color(326, 158, shopParts[2, 7], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(410, 158, shopParts[3, 7], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(492, 158, shopParts[4, 7], 0.7, 0.7, 0, c, c, c, c, 1);
		
		//D3str0y3r
		draw_text_transformed_color(326, 212, shopParts[2, 8], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(410, 212, shopParts[3, 8], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(492, 212, shopParts[4, 8], 0.7, 0.7, 0, c, c, c, c, 1);
		
		
		break;
		
	case 6:
		//Junk
		draw_text_transformed_color(326, 101, shopParts[2, 9], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(410, 101, shopParts[3, 9], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(492, 101, shopParts[4, 9], 0.7, 0.7, 0, c, c, c, c, 1);
		
		//Defaut
		draw_text_transformed_color(326, 158, shopParts[2, 10], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(410, 158, shopParts[3, 10], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(492, 158, shopParts[4, 10], 0.7, 0.7, 0, c, c, c, c, 1);
		
		//D3str0y3r
		draw_text_transformed_color(326, 212, shopParts[2, 11], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(410, 212, shopParts[3, 11], 0.7, 0.7, 0, c, c, c, c, 1);
		draw_text_transformed_color(492, 212, shopParts[4, 11], 0.7, 0.7, 0, c, c, c, c, 1);
		
		
		break;
		
		
		
}

if(isSelected1)
{
	draw_sprite(sprSelected, 0, 0, 0);	
	draw_sprite(sprWorkshopStatsButtonShop, 3, 0, 0);
}
else if(isSelected2)
{
	draw_sprite(sprSelected, 1, 0, 0)
	draw_sprite(sprWorkshopStatsButtonShop, 3, 0, 0);
}
else if(isSelected3)
{
	draw_sprite(sprSelected, 2, 0, 0)	
	draw_sprite(sprWorkshopStatsButtonShop, 3, 0, 0);
}

draw_sprite_ext(sprite_index, 0, 0, 0, 1, 1, 0, c_white, 0.5);
