/// @description Insert description here
// You can write your code in this editor
if (oGame.currentScore > oGame.highscore) oGame.highscore = oGame.currentScore;
oGame.currentScore = 0;
oGame.gameOver = true;
if (!oGame.hasPlayedDeathSound) {
	audio_play_sound(snd_death, 1, false);
	oGame.hasPlayedDeathSound = true;
}
with (oFade) {
    fading = true;
    fade_dir = 1;
    target_room = room_gameOver;
}
