/// @desc Variables

//User Variables
xStart = 0;
yStart = 0;
width = 0;
height = 0;
screenshotName = "";

//Program Variables
tempSprite[0] = 0;
screenshot = true;
screenshotnumber = 0;
cameraWidth = window_get_width();
cameraHeight = window_get_height()/2;
screenshotCamera = camera_create_view(xStart,yStart,cameraWidth,cameraHeight);
viewNumber = 7;
view_set_camera(viewNumber,screenshotCamera);
view_set_visible(viewNumber,true);
view_set_wport(viewNumber,cameraWidth);
view_set_hport(viewNumber,cameraHeight);

xx = xStart;
yy = yStart;

alarm[0] = 1;