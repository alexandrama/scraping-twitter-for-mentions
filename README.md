# twitterEnemies

I want to find out whether @realDonaldTrump targets different "enemies" as candidate, PEOTUS and POTUS.

<b>Scraping and cleaning tweets:</b>
1. Got Twitter oAuth access
2. <a href="http://www.interhacktives.com/2017/01/25/scrape-tweets-r-journalists/">Ran scraping package in R</a> using stringr, twitteR, etc.: got tweets from 29/9/2016 to 15/3/2017. Got 839 tweets -- enough for my analysis.
3. Exported to CSV
4. Cleaned data: dirty sheet "trumptweets_complete", cleaned to reflect time frames (Candidate: 29/9 to 8/11; PEOTUS: 9/11 to 11am 20/1; POTUS: 20/1 to 15/3)

<b>Examining tweets (IN PROGRESS):</b>
- Want to run text mining programme on the scraped tweets -- but which one? Sentiment analysis vs word frequency
- Taking out capital letters? -> don't trust DT's grammar.
- 25/3/17:  Now I am running the tm library in R to find out Trump's favourite enemies. I am using this guide: https://eight2late.wordpress.com/2015/05/27/a-gentle-introduction-to-text-mining-using-r/. I'm OK with removing punctuation in this case as I will analyse Trump's use of punctuation separately.

<b>To-do:</b>
1. Create challenges sheet (front end)
2. Find a good text mining programme (top choices: http://journal.code4lib.org/articles/11626, https://eight2late.wordpress.com/2015/05/27/a-gentle-introduction-to-text-mining-using-r/; others for reference: https://www.r-bloggers.com/sentiment-analysis-on-donald-trump-using-r-and-tableau, http://stackoverflow.com/questions/4600612/extracting-nounnoun-or-adjnounnoun-from-text, https://blog.monkeylearn.com/donald-trump-vs-hillary-clinton-sentiment-analysis-twitter-mentions/)
3. Think about front-end design
