put_in_rows <- function(path, pattern, recursive = FALSE, read_fun){
			data.files <- list.files(path, pattern = pattern, recursive = recursive)
			data <- lapply(paste0(path, data.files), read_fun)
			data <- do.call("cbind", data)}

#Exemple for csv files of a directory
data <- put_in_rows("./your_path_to_directory", "*.csv", TRUE, read.csv)
