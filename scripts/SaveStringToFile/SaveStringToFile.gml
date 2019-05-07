///@desc SaveStringToFile Saves sintr out to a file
///@arg filename
///@arg string

var fName = argument0;
var str = argument1;

var buffer = buffer_create(string_byte_length(str)+1, buffer_fixed, 1);
buffer_write(buffer, buffer_string, str);
buffer_save(buffer, fName);
buffer_delete(buffer);