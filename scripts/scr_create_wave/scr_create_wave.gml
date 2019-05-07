///@desc scr_create_wave

var line = argument0;
var opts = Split(line, ",");
timeout = real(opts[0]) * room_speed;
var enemies = [];
var qtds = [];
var e=0;
var wave_options_index = 0;
for (var i=1; i<array_length_1d(opts); i++) {
	if (opts[i] == "oWaveOptions") {
			wave_options_index = i;	
			break;
	}
	var objIndex = asset_get_index(opts[i]);	
	if objIndex == -1 {
		show_debug_message("name="+opts[i]+" object not found");
	} else {
		enemies[e] = objIndex;
		qtds[e] = opts[i+1];
		e++;
	}
}
isRandom = 0;
var instances = [];
if wave_options_index > 0 {
	isRandom = opts[wave_options_index+2];
}
if (isRandom > 0) {
	var total = [];
	var t=0;
	show_debug_message("total")
	for (var k = 0; k < array_length_1d(enemies); k++) {
		for (var n = 0; n < qtds[k]; n++) {
			total[t] = enemies[k];
			show_debug_message(total[t]);
			t++;
		}
	}
	show_debug_message("instances")
	for (var c=0; c<isRandom; c++){
		var _r = random_range(0, array_length_1d(total)-1);
		instances[c] = total[_r];
		show_debug_message(instances[c]);
	}
	for (var i=0; i<array_length_1d(instances); i++){		
		var obj = instance_create_layer(x,y,"Instances", instances[i]);
		show_debug_message("obj " + object_get_name(obj.object_index));
	}
} else {
	
}

show_debug_message("Wave created; enemies size:"+string(array_length_1d(instances)));
show_debug_message("timeout " + string(timeout));