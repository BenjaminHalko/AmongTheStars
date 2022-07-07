function Collision(_x,_y) {
	if(place_meeting(_x,_y,pWall)) return true;
	
	for(var i = 0; i < array_length(global.collisionMaps); i++) {
		if(
			tilemap_get_at_pixel(global.collisionMaps[i],ceil(bbox_left-x+_x),ceil(bbox_top-y+_y)) or
			tilemap_get_at_pixel(global.collisionMaps[i],ceil(bbox_right-x+_x-1),ceil(bbox_top-y+_y)) or
			tilemap_get_at_pixel(global.collisionMaps[i],ceil(bbox_left-x+_x),ceil(bbox_bottom-y+_y-1)) or
			tilemap_get_at_pixel(global.collisionMaps[i],ceil(bbox_right-x+_x-1),ceil(bbox_bottom-y+_y-1)) or
			
			tilemap_get_at_pixel(global.collisionMaps[i],ceil(bbox_left-x+_x),ceil(y)) or
			tilemap_get_at_pixel(global.collisionMaps[i],ceil(bbox_right-x+_x-1),ceil(y))
		) return true;
	}
	
	return false;
}