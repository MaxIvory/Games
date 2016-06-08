/// scr_check_collision

//moving down
if(vspeed>0){
    if(place_meeting(x,y+vspeed,o_solid)){
        while(!place_meeting(x,y+1,o_solid)){y++};
        vspeed=0}};
        
//moving up
if(vspeed<0){
    if(place_meeting(x,y+vspeed,o_solid)){
        while(!place_meeting(x,y-1,o_solid)){y--};
        vspeed=0}};
        
//moving right
if(hspeed>0){
    if(place_meeting(x+hspeed,y,o_solid)){
        while(!place_meeting(x+1,y,o_solid)){x++};
        hspeed=0}};  
              
//moving left
if(hspeed<0){
    if(place_meeting(x+hspeed,y,o_solid)){
        while(!place_meeting(x-1,y,o_solid)){x--};
        hspeed=0}};
