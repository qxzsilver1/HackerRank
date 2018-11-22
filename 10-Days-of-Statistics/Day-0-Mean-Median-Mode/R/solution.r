# Enter your code here. Read input from STDIN. Print output to STDOUT

#!/usr/bin/env Rscript

options(warn=-1)


f <- file("stdin")
open(f)
counter = 0
while(length(line <- readLines(f,n=1)) > 0) {
    counter = counter + 1
    if (counter == 1) {
        num_datapoints <- as.integer(line)
    }
    else
        data <- as.integer(unlist(strsplit(line, " ")))
    #write(line, stderr())
    #process line
}

#print(data)

Modes <- function(x) {
  ux <- unique(x)
  tab <- tabulate(match(x, ux))
  ux[tab == max(tab)]
}

cat(mean(data), "\n")
cat(median(data), "\n")
cat(min(Modes(data)), "\n")

#fsizes <- as.integer(readLines(file("stdin")))
#print(fsizes)
#print(summary(fsizes))
#stem(fsizes)
