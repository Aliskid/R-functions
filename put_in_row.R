put_in_rows <- function(path, pattern, recursive = FALSE, read_fun){
			data.files <- list.files(path, pattern = pattern, recursive = recursive)
			data <- lapply(paste0(path, data.files), read_fun)
			data <- do.call("cbind", data)}
