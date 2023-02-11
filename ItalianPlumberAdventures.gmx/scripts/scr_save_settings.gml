///Save Fullscreen + Filtering + VSync Settings

//Open the file
var file = file_text_open_write("Settings.dat")

//Save fullscreen settings
file_text_write_string(file,string(fullscreen))
file_text_writeln(file)

//Save filtering settings
file_text_write_string(file,string(filter))
file_text_writeln(file)

//Save vsync settings
file_text_write_string(file,string(vsync))
file_text_writeln(file)

//Gamepad variables
file_text_write_real(file,string(global.gamepadindex))
file_text_writeln(file)
file_text_write_real(file,string(global.gamepadjump))
file_text_writeln(file)
file_text_write_real(file,string(global.gamepadrun))
file_text_writeln(file)
file_text_write_real(file,string(global.gamepadselect))
file_text_writeln(file)
file_text_write_real(file,string(global.gamepadstart))
file_text_writeln(file)

//Close the file
file_text_close(file)
