/// @desc
screen_save("Screenshot"+string(screenshotnumber)+".png");

screenshotnumber++;
Save("Pictures","Screenshot",screenshotnumber);
alarm[0] = room_speed*10;