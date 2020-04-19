/// @function						srcPartScrewSplash();
/// @description					Create Screws particles type

if(!part_system_exists(global.particlesSys)){
	global.particlesSys = part_system_create();
}

global.oilParticle = part_type_create();

part_type_shape(global.oilParticle, pt_shape_pixel);
part_type_size(global.oilParticle, 1, 3, -0.05, 0);
part_type_color2(global.oilParticle, c_maroon, c_dkgray);
part_type_speed(global.oilParticle, 0.5, 2, 0, 0);
part_type_direction(global.oilParticle, 0, 360, random_range(-1, 1), 0);
part_type_gravity(global.oilParticle, 0.1, 270);
part_type_life(global.oilParticle, 25, 50);

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