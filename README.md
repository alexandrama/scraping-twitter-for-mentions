# @realDonaldTrump's top mentions

I wanted to run a meaningful analysis of @realDonaldTrump's frequently used words when he was tweeting as presidential candidate, president-elect and president. I also wanted to find out, if applicable, whether he had different "enemies" during these three periods.

Here's how I did it. (You can use the attached scripts for whatever account you want to scrape -- just make sure to change the Twitter account name and date ranges.)

<i>Scraping and cleaning tweets:</i>
- Got Twitter oAuth access via <a href="https://apps.twitter.com/">apps.twitter.com</a>
- Ran scraping package in R using stringr, twitteR, etc. for further analysis. <a href="https://github.com/alexandrama/scraping-for-twitter-mentions/blob/master/twitterScraper.R">Here's the script I used</a>.
- After running the package with two separate packages and Twitter API keys, I found that the package/Twitter API failed to get the complete collection of tweets I wanted: not only did it not scrape 3,200 tweets, it also left out numerous tweets from certain time periods (for example, tweets between 29 September and 5 October 2016 were completely missing).
- I decided to run a Python package, <a href="https://github.com/bpb27/twitter_scraping">forked from bpb27</a> with a separate Twitter API key, to see if my scrape would be better. All the scripts I used can be found in my <a href="https://github.com/alexandrama/twitter_scraping">fork of bpb27's repo</a>, and I've <a href="https://github.com/alexandrama/scraping-for-twitter-mentions/blob/master/pythonScrapingScript">pasted the scripts from my scrape</a> .
- Weirdly enough, tweets were also missing in this package (those between 11 March and 15 March 2017, for instance, were completely missing from this scrape). At this point I started to think it was my Twitter API keys, rather than the scripts, acting up. Sad!
- To resolve this issue, I merged the data from both the R and Python scrapes, and removed the duplicates to get the final collection. Due to many different special characters present, I had to manually sort through every tweet again to find duplicates.
- I divided the data from the final dataset into three time frames: tweets as candidate, from 6 Oct 2016 to 8 Nov 2016; as president-elect from 9 November 2016 to 20 January 2017; as president from 20 January 2017 to 15 March 2017. This gave me 160 days' worth of tweets to examine. The csv files are <a href="https://github.com/alexandrama/scraping-twitter-for-mentions/blob/master/2.%20raw_tweetsAsCandidate.csv">here</a>, <a href="https://github.com/alexandrama/scraping-twitter-for-mentions/blob/master/2.%20raw_tweetsAsPeotus.csv">here</a> and <a href="https://github.com/alexandrama/scraping-twitter-for-mentions/blob/master/2.%20raw_tweetsAsPotus.csv">here</a>.

<i>Examining data</i>
- Ran text mining and wordcloud programmes on the scraped tweets, now sorted into separate csv files according to the time frame. I found <a href="https://eight2late.wordpress.com/2015/05/27/a-gentle-introduction-to-text-mining-using-r/">eight2late's tutorial</a> the clearest and the most useful guide.
- Downloaded data as csv files for further cleaning and analysis.
- The scripts are <a href="https://github.com/alexandrama/scraping-twitter-for-mentions/blob/master/3.%20tm_tweetsAsCandidate.R">here</a>, <a href="https://github.com/alexandrama/scraping-twitter-for-mentions/blob/master/3.%20tm_tweetsAsPeotus.R">here</a> and <a href="https://github.com/alexandrama/scraping-twitter-for-mentions/blob/master/3.%20tm_tweetsAsPotus.R">here</a>.

<i>Presenting data</i>
- Currently ggplot scripts to visualise top mentions per period
- Created interactive line graph via JavaScript and Highcharts documentation to visualise mentions of the media during each period: <a href="http://jsfiddle.net/alexandrama/zxbsvxhf/">script available on JSFiddle</a>
