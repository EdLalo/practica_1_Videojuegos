global.Puntos = 0;
global.Vidas = 3;
global.Power = false;
global.Bonos = false;
global.Enemigo = false;
global.game_over = false;
cam = camera_create(); // Crear la cámara
camera_set_view_size(cam, 640, 480); // Establece el puerto de la vista

if (!audio_is_playing(bg_music)) { // Verifica si la música no está reproduciéndose
    audio_play_sound(bg_music, 1, true); // Reproduce el sonido en bucle
}