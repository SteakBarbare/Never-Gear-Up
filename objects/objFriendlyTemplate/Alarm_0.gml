part_particles_create(global.particlesSys, x, y-irandom(20), global.fogParticle, 1);
part_particles_create(global.particlesSys, x + irandom_range(-10, 10), y + irandom_range(-20, 20), global.sparkParticle, irandom_range(8, 15));

if(robotLife / robotLifeMax <= 0.25 && !dead){
	//part_particles_create(global.particlesSys, x, y-irandom(20), global.fireParticle, 1);
}