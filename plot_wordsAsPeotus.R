# ggplot script taken from "plot_wordsAsCandidate.R". only differences are corpus and frequency

# download ggplot
library(ggplot2)

# importing data from CSV file
wordsAsPeotus <- read.csv("/Users/ama1/Desktop/TrumpScraper/ggplot/wordsAsPeotus.csv", header = TRUE)
wordsAsPeotus
p_peotus <- ggplot(subset(wordsAsPeotus, frequency>25), aes (x=term, y=frequency))

# reordering frequency: trick learned thanks to http://stackoverflow.com/questions/16961921/plot-data-in-descending-order-as-appears-in-data-frame 
p_peotus <- p_peotus + aes(x = reorder(term, -frequency))

# putting data into a bar chart
p_peotus <- p_peotus + geom_bar(stat="identity")

# final aesthetics: changing name and angle of x axis labels
p_peotus <- p_peotus + scale_x_discrete(name="term")
p_peotus <- p_peotus + theme(axis.text.x=element_text(angle=45, hjust=1))
p_peotus

# "thank" stem features heavily; includes words "thank you tour"
# "elect" stem includes words like "elector"
