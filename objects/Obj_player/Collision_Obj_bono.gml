//global.Puntos += 10;
audio_play_sound(coin_sound, 1, false);
global.Puntos += 100; // Aumentar el puntaje en 100
with (other)
{
	instance_destroy();
}