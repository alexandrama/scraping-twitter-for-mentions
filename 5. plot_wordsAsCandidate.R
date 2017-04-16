# download ggplot
library(ggplot2)

# importing data from CSV file
wordsAsCandidate <- read.csv("/Users/ama1/Desktop/TrumpScraper/ggplot/wordsAsCandidate.csv", header = TRUE)
wordsAsCandidate
p_candidate <- ggplot(subset(wordsAsCandidate, frequency>39), aes (x=term, y=frequency))

# reordering frequency: trick learned thanks to http://stackoverflow.com/questions/16961921/plot-data-in-descending-order-as-appears-in-data-frame 
p_candidate <- p_candidate + aes(x = reorder(term, -frequency))

# putting data into a bar chart
p_candidate <- p_candidate + geom_bar(stat="identity")

# final aesthetics: changing name and angle of x axis labels
p_candidate <- p_candidate + scale_x_discrete(name="term")
p_candidate <- p_candidate + theme(axis.text.x=element_text(angle=45, hjust=1))
p_candidate
