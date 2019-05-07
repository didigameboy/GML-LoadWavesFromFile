///@desc LoadStringFromFile
///@arg filename

var _fileName = argument0;

var _buffer = buffer_load(_fileName);
var _string = buffer_read(_buffer, buffer_string);
buffer_delete(_buffer);

return _string;