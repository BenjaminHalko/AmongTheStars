//Setup
frame = 0;
var FileName = GHOSTFILE;

//Load Data
if (file_exists(FileName))
{
	ghostFile = file_text_open_read(FileName);
	ghostDataRoot = json_decode(base64_decode(file_text_read_string(ghostFile)));
	ghostData = ghostDataRoot[? "root"];
	ghostFrames = ds_list_size(ghostData);
	ghostFile = file_text_close(ghostFile);
}
else instance_destroy();