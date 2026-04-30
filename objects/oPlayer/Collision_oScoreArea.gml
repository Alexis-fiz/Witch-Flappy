if (!other.scored) {
    other.scored = true;
	oGame.score_scale = 6;
    oGame.currentScore += 1;
	audio_play_sound(snd_score, 1, false);
}