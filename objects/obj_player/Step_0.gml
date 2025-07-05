/// @description Movimentação basica e tiro do betinha



// movimento do betinha e colisão com o obj_wall

if (keyboard_check(ord("W")) && !place_meeting(x, y - 2.5, obj_wall)) {
    y -= 2.5;
}
if (keyboard_check(ord("S")) && !place_meeting(x, y + 2.5, obj_wall)) {
    y += 2.5;
}
if (keyboard_check(ord("A")) && !place_meeting(x - 2.5, y, obj_wall)) {
    x -= 2.5;
}
if (keyboard_check(ord("D")) && !place_meeting(x + 2.5, y, obj_wall)) {
    x += 2.5;
}

// tiro do betinha

if mouse_check_button_pressed(mb_left) {
	
	var dir_atk_player = point_direction(x, y, mouse_x, mouse_y);
	
	var atk = instance_create_layer(x, y, "Instances", obj_atk_player)
	
	atk.direction = dir_atk_player;
	
	obj_player.image_angle = dir_atk_player;
	
	obj_atk_player.image_angle = dir_atk_player
}