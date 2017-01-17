lines <- readLines(file("stdin"))

print_func <- function(string){
  splitted <- unlist(strsplit(string, ""))
  firstHalf <- paste0(splitted[seq(1,length(splitted),2)], collapse = "")
  secondHalf <- paste0(splitted[seq(2,length(splitted),2)], collapse = "")
  c(firstHalf, secondHalf)
}

for (k in 2:length(lines)){
  cat(print_func(lines[[k]]), "\n")
}
