"import data from a csv file"
data <- read.csv("C:/Users/chenh/Desktop/assignments/Bumpus_sparrows.csv")
### this is the path for my location 
data <- Bumpus_sparrows
### if you already imported, please use this code and ignore the first line

"split dataset by a column has certain values"
data0 <- data # all
data1 <- data[data$Survivorship == "S", ] 
data2 <- data[data$Survivorship == "NS", ]

"a program to calculate the mean and the covariance matrix of the dataset in for loop"

list <- list(data1, data2)
position <- 1

for (data in list) {
    mean <- colMeans(data[, 2:6])
    cov <- cov(data[, 2:6])
    cor <- cor(data[, 2:6])
    # print the column mean & covariance/correlation matrix of two data sets"
    print(stringr::str_c("the column mean of data", stringr::str_c(position)))
    print(mean)

    print(stringr::str_c("the covariance matrix of data", stringr::str_c(position)))
    print(cov)

    print(stringr::str_c("the correlation matrix of data", stringr::str_c(position)))
    print(cor)
    position <- position + 1
}

print("the meaning of the data index: 1 <- Surviors, 2 <- Non-Survivors")
