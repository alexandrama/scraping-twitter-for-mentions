# ggplot script taken from "plot_wordsAsCandidate.R". only differences are corpus and frequency

# download ggplot
library(ggplot2)

# importing data from CSV file
wordsAsPotus <- read.csv("/Users/ama1/Desktop/TrumpScraper/ggplot/wordsAsPotus.csv", header = TRUE)
wordsAsPotus
head(wordsAsPotus)
p_potus <- ggplot(subset(wordsAsPotus, frequency>18), aes (x=term, y=frequency)

# reordering frequency: trick learned thanks to http://stackoverflow.com/questions/16961921/plot-data-in-descending-order-as-appears-in-data-frame 
p_potus <- p_potus + aes(x = reorder(term, -frequency))

# putting data into a bar chart
p_potus <- p_potus + geom_bar(stat="identity")

# final aesthetics: changing name and angle of x axis labels
p_potus <- p_potus + scale_x_discrete(name="term")
p_potus <- p_potus + theme(axis.text.x=element_text(angle=45, hjust=1))
p_potus

# "america" stem includes "american"