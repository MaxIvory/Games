//Do we have line of sight

if(!collision_line(x,y,o_player.x,o_player.y,o_solid,false,true)){
    //Set vision Cone
    cone_left = image_angle+sight_conel;
    if(cone_left > 359){cone_left=cone_left-359};
    cone_right = image_angle+sight_coner;
    if(cone_right < 0){cone_right=cone_left+359};
    //Get angle to player
    p_angle=point_direction(x,y,o_player.x,o_player.y);
    show_debug_message("pangle: "+string(p_angle));
    show_debug_message("Lcone: "+string(cone_left));
    show_debug_message("Rcone: "+string(cone_right));
    //Is player in cone
    if(cone_right > cone_left){
        if(p_angle <= cone_left or p_angle >= cone_right){in_cone = true};
        else{in_cone = false};
    }
    else{
        if(p_angle <= cone_left and p_angle >= cone_right){in_cone = true};
        else{in_cone = false};
    }
    //Do stuff if they are
    if(in_cone){
        // Get distance to player
        dist_to_player = point_distance(x,y,o_player.x,o_player.y);
        // Get vis
        p_vis = o_player_col.visability;
        // Can we see the cheeky knobbers
        if(p_vis == 3){  // They are fucking shite and need to git gud
            if(dist_to_player < detection_3){image_angle = point_direction(x,y,o_player.x,o_player.y)};
            p_last_knownx = o_player.x;
            p_last_knowny = o_player.y;
            currentx = x;
            currenty = y;
        }
        if(p_vis == 2){  // Gettin there
            if(dist_to_player < detection_2){image_angle = point_direction(x,y,o_player.x,o_player.y)};
            p_last_knownx = o_player.x;
            p_last_knowny = o_player.y;
            currentx = x;
            currenty = y;
        }
        if(p_vis == 1){  // Fukin finally
            if(dist_to_player < detection_1){image_angle = point_direction(x,y,o_player.x,o_player.y)};
            p_last_knownx = o_player.x;
            p_last_knowny = o_player.y;
            currentx = x;
            currenty = y;
        }
        if(p_vis == 0){  // Oh mee guud hex
            if(dist_to_player < detection_0){image_angle = point_direction(x,y,o_player.x,o_player.y)};
            p_last_knownx = o_player.x;
            p_last_knowny = o_player.y;
            currentx = x;
            currenty = y;
        }
    }
}
