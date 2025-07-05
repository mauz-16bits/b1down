/// @description Seguir o betinha do player
	obj_enemy.image_angle = point_direction(x, y, obj_player.x, obj_player.y);
	
if instance_exists(obj_player) {
	var dir = point_direction(x, y, obj_player.x, obj_player.y);
	var dx = lengthdir_x(enemy_speed, dir);
	var dy = lengthdir_y(enemy_speed, dir);
	
	if (!place_meeting(x + dx, y + dy, obj_wall)) {
		x += dx;
		y += dy;
	}
	
	path_end()
	
    if (mp_grid_path(grid, caminho, x, y, obj_player.x, obj_player.y, true)) {
        path_start(caminho, enemy_speed, path_action_stop, false);
    }
}

