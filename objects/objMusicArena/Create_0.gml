var randomMusic = irandom(1);

audio_stop_all();

if(randomMusic == 0){
	audio_play_sound(sndMusicArena, 1, true);
}else if(randomMusic == 1){
	audio_play_sound(sndMusicArena2, 1, true);
}