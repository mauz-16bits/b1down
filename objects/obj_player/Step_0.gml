/// @description Movimentação basica e tiro do betinha

// movimento do betinha 

  if keyboard_check(ord("W")) {
y -= 2.5;
} if keyboard_check(ord("S")) {
y += 2.5;
} if keyboard_check(ord("A")) {
x -= 2.5;
} if keyboard_check(ord("D")) {
x += 2.5;
}

// tiro

if mouse_check_button_pressed(mb_left) {
	var dir_atk_player = point_direction(x, y, mouse_x, mouse_y);
	
	var atk = instance_create_layer(x, y, "Instances", obj_atk_player)
	
	atk.direction = dir_atk_player;
	
	atk.image_angle = dir_atk_player;
}