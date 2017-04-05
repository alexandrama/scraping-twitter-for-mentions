# twitterEnemies
 
I wanted to analyse @realDonaldTrump's most frequently used words when he tweeted as candidate, president-elect and president, and -- if possible -- whether he targeted different "enemies" during these three period. 

Here's how I did it.

<i>Scraping and cleaning tweets:</i>
1. Got Twitter oAuth access via apps.twitter.com
2. <a href="http://www.interhacktives.com/2017/01/25/scrape-tweets-r-journalists/">Ran scraping package in R</a> using stringr, twitteR, etc. 
3. Exported to CSV
4. Cleaned data to reflect time frames (tweets as candidate, from 29/9 to 8/11; as PEOTUS from 9/11 to 11am 20/1; as POTUS from 20/1 to 15/3)

<b>Examining tweets</b>
1. Ran text mining programme on the scraped tweets, now sorted into separate csv files according to the time frame. I found <a href="https://eight2late.wordpress.com/2015/05/27/a-gentle-introduction-to-text-mining-using-r/">eight2late's introduction to text mining with R</a> the clearest and the most useful. I didn't use all of its suggestsions, such as stripping whitespace and 
2. Downloaded data to csv files for further cleaning and analysis

<b>Outstanding tasks</b>
- Clean and analyse popular words after running text mining programme
- Think about front-end design: currently made a few raw graphs using ggplot; perhaps something interactive?
- Create wordcloud

<b>Stumbles</b>
- I specified in the package that I wanted 3,200 tweets (the maximum number of tweets that can be scraped) but could only get 839, between 29/9/2016 and 15/3/2017 for some reason, despite multiple attempts on separate packages and using different oAuth keys. Regardless, I got 839 tweets, which were enough for a quick analysis.
- To fix the above problem, I also tried to scrape the tweets using Python, using the <a href="https://www.buzzfeed.com/lamvo/the-twitterverse-of-donald-trump-in-26234-tweets?utm_term=.iwqa5vJlE#.nvnGmroWE">guide provided by BuzzFeed's Lam Thuy Vo</a> last December. Unfortunately, this was fruitless: the link to one of the scripts that she provided was broken, and my Terminal refused to install pip despite multiple attempts

<i>Times updated: 25/3; 5/4</i>
