/// @description Movimentação basica e tiro do betinha

	obj_player.image_angle = point_direction(x, y, mouse_x, mouse_y);

// movimento do betinha e colisão com o obj_wall (eu sei, esse sistema de movimentação e colisão tá uma merda, mas dps eu arrumo)

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

if mouse_check_button(mb_left) && can_shoot == true {
	
	var dir_atk_player = point_direction(x, y, mouse_x, mouse_y);
	
	is_attacking = true;
	
	attack_timer = 10;
	
	sprite_index = spr_player_atk_mbleft;
	
	var atk = instance_create_layer(x, y, "Instances", obj_atk_player)
	
	atk.direction = dir_atk_player;

	
	obj_atk_player.image_angle = dir_atk_player
	
	can_shoot = false;
	shoot_cooldown = 20;
}

if is_attacking {
	attack_timer -= 1;
	
	if attack_timer <= 0 {
		is_attacking = false
	}
}

if !can_shoot {
	
	shoot_cooldown -= 1;
	
	if shoot_cooldown <= 0 {
		can_shoot = true;
	}

}

if !mouse_check_button(mb_left) {
	sprite_index = spr_player_idle;
}