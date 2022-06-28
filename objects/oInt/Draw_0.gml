/// @desc
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
draw_set_font(fTitle)
draw_set_alpha(dissappearalpha);
draw_text(room_width/2,room_height/4,"Among The Stars");
draw_set_alpha(dissappearalpha*alpha);
draw_set_font(fPause);
draw_text(room_width/2,(room_height/4)*2,"Press Enter\nTo Start");
draw_set_alpha(1);