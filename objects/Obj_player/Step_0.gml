/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
//sprStand = 
derecha_key = keyboard_check(vk_right);
izq_key = keyboard_check(vk_left);
arriba_key = keyboard_check(vk_up);
abajo_key = keyboard_check(vk_down);

//Calcular velocidad

xspd = (derecha_key - izq_key) * move_spd;
yspd = (abajo_key - arriba_key) * move_spd;

//Colision
var new_x = x + xspd;
var new_y = y + yspd;
if (!place_meeting(new_x, y, Object_wall) && !place_meeting(new_x, y, Obj_arbusto)) {
    x = new_x;  // Si no hay colisión, mover en X
} else {
    xspd = 0;  // Si hay colisión, detener el movimiento en X
}

// Resolver colisiones en el eje Y
if (!place_meeting(x, new_y, Object_wall) && !place_meeting(x, new_y, Obj_arbusto)) {
    y = new_y;  // Si no hay colisión, mover en Y
} else {
    yspd = 0;  // Si hay colisión, detener el movimiento en Y
}
 

//Incremetar velocidad

x = x + xspd;
y += yspd;


if (xspd > 0) {
    face = RIGHT;
} else if (xspd < 0) {
    face = LEFT;
}

if (yspd > 0) {
    face = DOWN;
} else if (yspd < 0) {
    face = UP;
}

if xspd == 0 && yspd == 0 {
    // Si el personaje está quieto, mostrar solo el primer frame del sprite
    image_speed = 0; // Detener la animación
    image_index = 0; // Mostrar el primer frame
} else {
    // Si el personaje está en movimiento, activar la animación
    image_speed = 1; // Velocidad normal de animación
}

sprite_index = sprite[face];

//if (x == xprevious && y == yprevious) {
	//sprite_index = sprStand;
//}
// Actualizar la cámara para que siga al jugador
var camX = Obj_player.x - camera_get_view_width(cam) / 2;
var camY = Obj_player.y - camera_get_view_height(cam) / 2;
camera_set_view_pos(cam, camX, camY);

if (global.Vidas <= 0) {
    // Detener el movimiento del jugador (opcional)
    xspd = 0;
    yspd = 0;

    // Cambiar a una variable que controla el estado del juego
    global.game_over = true; // Cambia esta variable a true si el jugador muere
    
}
if (global.game_over) {
    if (keyboard_check_pressed(vk_anykey)) { // Verifica si se presiona cualquier tecla
        game_end(); // Cierra el juego
    }
}

