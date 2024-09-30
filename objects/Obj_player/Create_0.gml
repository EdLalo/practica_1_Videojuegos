/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
global.game_over = false;

xspd = 0
yspd = 0

move_spd = 2;

sprite[RIGHT] = spr_derecha;
sprite[UP] = spr_arriba;
sprite[DOWN] = spr_abajo;
sprite[LEFT] = spr_izquierda;

face = RIGHT;

// Crear la cámara
cam = camera_create_view(0, 0, 640, 480, 0, Obj_player, -1, -1, 640, 480);
camera_set_view_target(cam, Obj_player);

// Configurar la cámara como activa
view_camera[0] = cam;
