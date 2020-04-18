event_inherited();

skeleton_animation_set("Idle");

skeleton_animation_mix("Idle", "Attack Left", 0.3);
skeleton_animation_mix("Attack Left", "Idle", 0.3);
