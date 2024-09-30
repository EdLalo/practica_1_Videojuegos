/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_set_color(c_black);
draw_set_font(font_pixel);
if (instance_exists(Obj_player)) { // Verifica si Obj_player existe
    var player_instance = Obj_player; // Referencia directamente al objeto Obj_player

    // Posición del jugador
    var playerX = player_instance.x;
    var playerY = player_instance.y;

    // Dibujar las vidas un poco por encima del jugador
    draw_text(playerX - 20, playerY - 20, "Vidas: " + string(global.Vidas)); 
}

if (instance_exists(Obj_player)) { // Verifica si Obj_player existe
    var player_instance = Obj_player; // Referencia directamente al objeto Obj_player

    // Posición del jugador
    var playerX = player_instance.x;
    var playerY = player_instance.y;

    // Dibujar las vidas un poco por encima del jugador
    draw_text(playerX - 20, playerY - 40, "Puntos: " + string(global.Puntos)); 
}
if (global.game_over) {
    draw_set_color(c_black); 
    draw_set_font(font_gameover); 
    var playerX = player_instance.x;
    var playerY = player_instance.y;

    // Dibuja el texto "Game Over" en el centro de la pantalla
    draw_text(playerX - string_width("Game Over") / 4,playerY - string_height("Game Over") / 20, "Game Over");
}
