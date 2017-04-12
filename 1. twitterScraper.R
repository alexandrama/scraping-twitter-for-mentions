# script from http://www.interhacktives.com/2017/01/25/scrape-tweets-r-journalists/
#0) Do this first bit the first time, but only need to do once to install
install.packages("stringr")
install.packages("twitteR")
install.packages("purrr")
install.packages("tidytext")
install.packages("dplyr")
install.packages("tidyr")
install.packages("lubridate")
install.packages("scales")
install.packages("broom")
install.packages("ggplot2")

#1) Do this whenever you need to start a session
library(stringr)
library(twitteR)
library(purrr)
library(tidytext)
library(dplyr)
library(tidyr)
library(lubridate)
library(scales)
library(broom)
library(ggplot2)

# 2) Get access to Twitter
consumerKey = "nJv0L4OUiL5vyTjcK4DZRSLft"
consumerSecret = "Xtqtu7YLOIBOZuSdpefI9jNff7kMJl6r2pAbyxKSihtDmuTrAk"
accessToken = "941663383-7oPRsQ0CrgXVEHOkxYtAr1clZsTbcVU7PXnAPB3W"
accessSecret = "WE1CUyz0bWP3MlcWnaPWTjoeJgNhD7dADWLejpDaObHDh"
options(httr_oauth_cache=TRUE)
setup_twitter_oauth(consumer_key = consumerKey, consumer_secret = consumerSecret,
                    access_token = accessToken, access_secret = accessSecret)

#3.1) Scrape a user's tweets 
trumptweets <- userTimeline("realDonaldTrump")
)
trumptweets <- userTimeline("realdonaldtrump", n = 3200)

trumptweets_df <- tbl_df(map_df(trumptweets, as.data.frame))

write.csv(trumptweets_df, "trumptweets.csv")
