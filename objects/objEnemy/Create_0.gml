event_inherited();

skeleton_animation_set("Idle");

//Attack mix
skeleton_animation_mix("Idle", "Attack Left", 0.3); 
skeleton_animation_mix("Attack Left", "Idle", 0.3);

skeleton_animation_mix("Idle", "Attack Right", 0.3);
skeleton_animation_mix("Attack Right", "Idle", 0.3);

//Stagger
skeleton_animation_mix("Idle", "Stagger", 0.3);
skeleton_animation_mix("Stagger", "Idle", 0.3);

//Death
skeleton_animation_mix("Idle", "Death", 0.3);

robotName = "";