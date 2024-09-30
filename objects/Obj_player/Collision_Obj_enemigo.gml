/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
audio_play_sound(enemigo_sound, 1, false);
with(other) {
    instance_destroy();  // Destruir al enemigo
}

// Reducir vidas del personaje
if (global.Vidas > 0) {
    global.Vidas -= 1;
}

// Verificar si las vidas llegan a 0
