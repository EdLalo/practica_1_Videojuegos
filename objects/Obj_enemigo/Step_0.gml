// Movimiento en el eje horizontal (izquierda y derecha)
//x += h_speed;

// Si hay una colisión con una pared en la nueva posición X, revertir el movimiento
//if (place_meeting(x, y, Object_wall)) {
  //  x -= h_speed;  // Deshacer el movimiento
   // h_speed = -h_speed;  // Cambiar la dirección
//}

// Movimiento en el eje vertical (arriba y abajo)
y += v_speed;

// Si hay una colisión con una pared en la nueva posición Y, revertir el movimiento
if (place_meeting(x, y, Object_wall)) {
    y -= v_speed;  // Deshacer el movimiento
    v_speed = -v_speed;  // Cambiar la dirección
}
if (place_meeting(x, y, Obj_player)) {
    instance_destroy();  // Destruir al enemigo cuando toque al jugador
}