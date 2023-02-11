///Load Fullscreen + Filtering + VSync Settings
if file_exists("Settings.dat")
{

    //Open the file
    var file = file_text_open_read("Settings.dat")

    //Set fullscreen mode based on the read value
    fullscreen = real(file_text_read_string(file))
    file_text_readln(file)

    //Set filtering mode based on the read value
    filter = real(file_text_read_string(file))
    file_text_readln(file)

    //Set vsync based on the read value
    vsync = real(file_text_read_string(file))
    file_text_readln(file)
    
    //Gamepad variables
    global.gamepadindex = real(file_text_read_real(file))
    file_text_readln(file)
    global.gamepadjump = real(file_text_read_real(file))
    file_text_readln(file)
    global.gamepadrun = real(file_text_read_real(file))
    file_text_readln(file)
    global.gamepadselect = real(file_text_read_real(file))
    file_text_readln(file)
    global.gamepadstart = real(file_text_read_real(file))
    file_text_readln(file)

    //Close the file
    file_text_close(file)

}
else
{

    //Fullscreen is on by default
    fullscreen = 1

    //Filtering is off if the shaders fail to compile
    if not shader_is_compiled(sha_hq2x)
    or not shader_is_compiled(sha_hq4x)
        filter = 0

    //Set the default to HQ4X only if the screen is big enough to fit it
    else if display_get_width() >= 1536
    and display_get_height() >= 864
        filter = 2
    else
        filter = 1

    //VSync is off by default
    vsync = 0

}
