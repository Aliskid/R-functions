if (dir.exists("./your_directory")){
	if (length(dir("./your_directory", all.files=TRUE, pattern = "*")) != 0){
    """ do something"""
    } else {
	print ("No file found")}
} else {
print ("No directory found")}
