name <- c("Mandi", "Amy", "Nicole", "Olivia")
distance <- c(0.8, 3.1, 2.8, 4.0)
time <- c(10, 30, 40, 50)

time <- time / 60
mph <- distance/time
mph
name <- name[order(mph, decreasing = TRUE)]

speed <- data.frame(name = name, mph = mph)
speed