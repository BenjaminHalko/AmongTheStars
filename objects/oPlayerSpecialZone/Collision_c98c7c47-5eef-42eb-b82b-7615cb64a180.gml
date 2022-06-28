/// @desc
if(hasControl) audio_play_sound(snGotStar,1,false);
hasControl = false;
physics_world_gravity(0,0);
phy_speed_x = 0;
phy_speed_y = 0;
oSpecialZoneSpin.finish = true;
oSpecialZoneSpin.win = true;