library(dplyr)
rm(list = ls())

input <- read.delim("~/Desktop/input", sep=" ", fill=TRUE, header=FALSE)

# From the spec. importing all the data
observed.features <- input[1,1] 
feature.sets <- input[1,2]      
sets.to.query <- input[feature.sets + 2, 1]

training.data <- input[1:feature.sets + 1,]
training.data <- data.frame(training.data)

# Subsetting Test Data (Delete the column of NAs)
test.data <- input[(feature.sets + 3):(feature.sets + 2 + sets.to.query),]
last.column <- paste("V", (observed.features + 1), sep = "")
test.data <- test.data[, !(names(test.data) %in% last.column)]


# Build Model
regression.formula <- as.formula(paste(tail(names(training.data), 1), "~ ."))
model <- lm(regression.formula, training.data)

# Test Model
predicted.values <- predict(model,test.data)

# Output 
for (prediction in predicted.values) {
  cat(format(round((prediction), 3), nsmall = 3), "\n")
}
