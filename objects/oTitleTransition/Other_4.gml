/// @desc

var _layers = [];
global.collisionMaps = [];
if(room == rGame) {
	_layers = ["Ground","Cave","Lava","DeepLava"];
} else if (room == rExtra) {
	_layers = ["Ground"];
}

for(var i = 0; i < array_length(_layers); i++) {
	array_push(global.collisionMaps,layer_tilemap_get_id(layer_get_id(_layers[i])));
}