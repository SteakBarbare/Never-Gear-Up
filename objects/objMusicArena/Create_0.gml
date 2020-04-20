var randomMusic = irandom(2);

audio_stop_all();

if(randomMusic == 0){
	audio_play_sound(MusicArena, 1, true);
}else if(randomMusic == 1){
	audio_play_sound(sndRRTest1, 1, true);
}else{
	audio_play_sound(sndRRTest2, 1, true);
}