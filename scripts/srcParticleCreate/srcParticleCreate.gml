/// @function						srcParticleCreate();
/// @param  {string}	fxType		Name of Fx event to create
/// @description					Create particles depending on a situation

var fxType;

fxType = argument[0];


if(fxType == "Hit"){
	if(!isBroken){
		// Create oil and screws particles
		part_particles_create(global.particlesSys, x, y-irandom(20), global.oilParticle, irandom_range(20, 35));
		part_particles_create(global.particlesSys, x, y-irandom(20), global.screwParticle, irandom_range(10, 25));
		fxGenerated = true;
					
		// Flashing sprite
		flash = 6;
					
		//Impact Fx
		var impact = instance_create_depth(x, y, -y, objImpactFx);
		impact.sprite_index = sprImpactFx;
		impact.image_xscale = image_xscale;
					
		objScreenShake.tinyShake = 15;
		
		audio_play_sound(asset_get_index("sndImpact" + string(irandom(4))), 15, false);
	}else{
		// Create oil and screws particles
		part_particles_create(global.particlesSys, x, y-irandom(20), global.oilParticle, irandom_range(30, 45));
		part_particles_create(global.particlesSys, x, y-irandom(20), global.sparkParticle, irandom_range(30, 45));
		part_particles_create(global.particlesSys, x, y-irandom(20), global.screwParticle, irandom_range(20, 35));
		fxGenerated = true;
					
		// Flashing sprite
		flash = 6;
					
		//Impact Fx
		var impact = instance_create_depth(x, y, -y, objImpactFx);
		impact.sprite_index = sprHeavyImpactFx;
		impact.image_xscale = image_xscale;
					
		objScreenShake.heavyShake = 10;
		audio_play_sound(asset_get_index("sndImpact" + string(irandom(4))), 15, false);
		audio_play_sound(asset_get_index("sndExplosion" + string(irandom(3))), 25, false);
	}
}else if(fxType == "Block"){
	//Impact Fx
	var impact = instance_create_depth(x + (10 * sign(image_xscale)), y, -y, objImpactFx);
	impact.sprite_index = sprBlockFx;
	impact.image_xscale = image_xscale;
					
	fxGenerated = true;
	objScreenShake.tinyShake = 10;
	audio_play_sound(asset_get_index("sndBlock" + string(irandom(5))), 15, false);
}

isBroken = false;