/// @description Seguir o betinha do player

var enemy_speed = 2;

if instance_exists(obj_player) {
	move_towards_point(obj_player.x, obj_player.y, enemy_speed)
}