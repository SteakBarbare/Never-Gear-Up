/// @function						srcPartScrewSplash();
/// @description					Create Screws particles type

if(!part_system_exists(global.particlesSys)){
	global.particlesSys = part_system_create();
}

global.oilParticle = part_type_create();

part_type_shape(global.oilParticle, pt_shape_pixel);
part_type_size(global.oilParticle, 1, 3, -0.05, 0);
part_type_color2(global.oilParticle, c_dkgray, c_black);
part_type_speed(global.oilParticle, 0.5, 2, 0, 0);
part_type_direction(global.oilParticle, 0, 360, random_range(-1, 1), 0);
part_type_gravity(global.oilParticle, 0.1, 270);
part_type_life(global.oilParticle, 25, 50);


global.sparkParticle = part_type_create();

part_type_shape(global.sparkParticle, pt_shape_spark);
part_type_size(global.sparkParticle, 0.1, 0.5, -0.05, 0);
part_type_color2(global.sparkParticle, c_yellow, c_orange);
part_type_speed(global.sparkParticle, 0.5, 2, 0, 0);
part_type_direction(global.sparkParticle, 0, 360, random_range(-1, 1), 0);
part_type_gravity(global.sparkParticle, 0.1, 270);
part_type_life(global.sparkParticle, 60, 90);

#region Screws Part
global.screwParticle = part_type_create();

part_type_sprite(global.screwParticle, sprScrew, false, true, true);
part_type_size(global.screwParticle, 0.5, 1, -0.01, 0);
part_type_orientation(global.screwParticle, 0, 359, 1, 0, 0);
part_type_speed(global.screwParticle, 0.5, 2.5, -0.01, 0);
part_type_direction(global.screwParticle, 0, 180, random_range(-1, 1), 0);
part_type_gravity(global.screwParticle, 0.05, 270);

part_type_life(global.screwParticle, 100, 200);
#endregion

global.fogParticle = part_type_create();

part_type_shape(global.fogParticle, pt_shape_smoke);
part_type_size(global.fogParticle, 0.7, 1.3, 0.002, 0);
part_type_orientation(global.fogParticle, 0, 359, 0, 0, 0);
part_type_speed(global.fogParticle,-0.2,0.2,0,0);
part_type_direction(global.fogParticle,0,359,0,0);
	
part_type_blend(global.fogParticle, 1);
part_type_alpha3(global.fogParticle, 0.025, 0.030, 0.035);
part_type_color3(global.fogParticle, c_white, c_gray, c_dkgray);

part_type_life(global.fogParticle, 400, 600);