# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in the first 4 games of their season
# Hint: (google "Seahawks scores")
score <- c(9, 12, 17, 46)

# Create a vector of the number of points the Seahawks have allowed to be scored against them in the first 4 games
pointsAgainst <- c(17, 9, 33, 18)

# Combine your two vectors into a dataframe
myFrame <- data.frame(score, pointsAgainst)
View(myFrame)
# Create a new column "diff" that is the difference in points
myFrame$diff <- score - pointsAgainst

# Create a new column "won" which is TRUE if the Seahawks wom
myFrame$won <- (myFrame[["diff"]] > 0)

# Create a vector of the opponents
opponents <- c("Green Bay", "San Francisco", "Tennessee", "Indianapolis")

# Assign your dataframe rownames of their opponents
rownames(myFrame) <- opponents
View(myFrame)
