///@desc Split return string[]
///@arg string
///@arg sub-str

var _str = argument0;
var _sub = argument1;
var _col = 1;
var _res = [];
var i = 0;

while (string_pos(_sub, _str) > 0) {	
	_res[i] = string_copy(_str, _col, string_pos(_sub, _str) - _col);
	i++;
	_col = string_pos(_sub, _str);
	_str = string_replace(_str,_sub,"");
}
_res[i] = string_copy(_str, _col, string_length(_str) + 1 - _col);
return _res;