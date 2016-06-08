/// scr_player_keyboard_controlls()

// Get key input
key_w = keyboard_check(ord('W'));
key_s = keyboard_check(ord('S'));
key_a = keyboard_check(ord('A'));
key_d = keyboard_check(ord('D'));
key_e = keyboard_check_pressed(ord('e'));

// Move with input
if(key_w){vspeed=-move_speed};
if(key_s){vspeed=move_speed};
if(key_a){hspeed=-move_speed};
if(key_d){hspeed=move_speed};
if(key_a and key_d){hspeed=0};
if(key_w and key_s){vspeed=0};
if(!key_a and !key_d){hspeed=0};
if(!key_w and !key_s){vspeed=0};
