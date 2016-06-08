/// scr_player_check_hidden()

// Are you in a hiding place?
if(place_meeting(x,y,o_detection1)){o_player.detection=1; o_player.image_alpha=0.7};
if(place_meeting(x,y,o_detection2)){o_player.detection=2; o_player.image_alpha=0.7};
if(place_meeting(x,y,o_detection3)){o_player.detection=3; o_player.image_alpha=0.7};
else{o_player.detection=0; o_player.image_alpha=1};
