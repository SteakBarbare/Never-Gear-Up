if(obj_Pj.switchCoordinates == 0){
	obj_Pj.x = global.monolith.x+40;
	obj_Pj.y = global.monolith.y;
} else {
	obj_Pj.x = obj_Pj.switchCoordinates[0];
	obj_Pj.y = obj_Pj.switchCoordinates[1];
	obj_Pj.switchCoordinates = 0;
}

var baseW = 640;
var baseH = 360;

// Get the game aspect ratio
var aspect = baseW / baseH ;

if (display_get_width() < display_get_height()){
    // Portrait
    var ww = min(baseW, display_get_width());
    var hh = ww / aspect;
}else{
    // Landscape
    var hh = min(baseH, display_get_height());
    var ww = hh * aspect;
}

surface_resize(application_surface, ww, hh);