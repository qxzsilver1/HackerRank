f <- file("stdin")
open(f)
row <- readLines(f, n=1, warn = FALSE)
num <- row
close(f)

num = as.integer(num[1])

if (num %% 2 == 1) {
    cat("Weird")
} else if (num >= 6 && num <= 20) {
    cat("Weird")
} else
    cat("Not Weird")
