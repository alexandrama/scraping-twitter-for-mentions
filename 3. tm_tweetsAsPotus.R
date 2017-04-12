# replica of tm_tweetsAsCandidate_new.R script; only changing corpus
library(tm)
docs <- Corpus(DirSource("/Users/ama1/Desktop/TrumpScraper/csv_final_raw/tweetsAsPotus_new"))

# to print particular document (in this case, only one doc), use the following function:
writeLines(as.character(docs[[1]]))

toSpace <- content_transformer(function(x,pattern) {return (gsub(pattern, " ", x))})

# removing punctuation and replacing them with spaces
docs <- tm_map(docs, removePunctuation)

#Transform to lower case to make the text miner's job easier
docs <- tm_map(docs, content_transformer(tolower))

# strip digits
docs <- tm_map(docs, removeNumbers)

# removing stopwords
docs <- tm_map(docs, removeWords, stopwords("english"))

# cannot figure out how to remove URLs (i.e. words that begin with "https")

# stripping white space -- kept # underneath as don't know if this is necessary
# docs <- tm_map(docs, stripWhitespace)

# stemming (reducing words to common root) --> does this affect proper nouns?
# choosing not to lemmatise words because I'm mainly looking for enemies
library(SnowballC)
docs <- tm_map(docs, stemDocument)

# document term matrix --> does this mean i can put all in the same folder?
dtm <- DocumentTermMatrix(docs)
dtm

# mining the corpus!
freq <- colSums(as.matrix(dtm))
length(freq)
ord <- order(freq, decreasing=TRUE)

# inspect most frequently occurring terms
freq[head(ord)]
freq[tail(ord)]

# checking that dimension of freq == number of terms
length(freq) 

# creating sort order
ord <- order(freq, decreasing = TRUE)
freq[head(ord)]
freq[tail(ord)]

# enforcing lower and upper limit of word length to between 2 and 14 characters -- remove stop words that may have been missed earlier and URLs
# this strips out long hashtags, including "MakeAmericaGreatAgain" and "MakeAmericaStrongAgain"
dtmr <- DocumentTermMatrix(docs, control=list(wordLengths=c(2,14)))

# calculating culmulative frequencies of words across documents and sort as before (combining dtmr and freq)
freqr <- colSums(as.matrix(dtmr))
length(freqr)
freqr
ordr <- order(freqr,decreasing=TRUE)
freqr[head(ordr)]
freqr[tail(ordr)]

# putting what we have into csv!
write.csv(freqr, file="freqr_tweetsAsPotus_new.csv")
