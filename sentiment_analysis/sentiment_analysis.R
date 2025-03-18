
## **📌 Project 3: Sentiment Analysis of Financial News**
#Relevance: NLP in Finance, Market Data Analysis, Fintech AI  

### **Objective:**  
# - Scrape **financial news headlines**.  
# - Perform **basic sentiment analysis** to classify market sentiment.  

#---------------------------------------------------------------------------
  
  ### ** sentiment_analysis.R**
# Load necessary libraries
library(rvest)
library(tidytext)
library(dplyr)

# Scrape financial headlines from Yahoo Finance
url <- "https://finance.yahoo.com/"
page <- read_html(url)

# Extract headlines
headlines <- page %>% html_nodes(".js-stream-content a") %>% html_text()
headlines <- na.omit(headlines)  # Remove NA values

# Load sentiment lexicon
sentiments <- get_sentiments("afinn")

# Convert headlines into words and assign sentiment scores
words <- unnest_tokens(data.frame(headlines), word, headlines)
sentiment_scores <- words %>% inner_join(sentiments, by = "word") %>% summarise(score = sum(value))

# Output sentiment
if (sum(sentiment_scores$score) > 0) {
  cat("Overall Market Sentiment: Positive 🚀\n")
} else if (sum(sentiment_scores$score) < 0) {
  cat("Overall Market Sentiment: Negative 📉\n")
} else {
  cat("Overall Market Sentiment: Neutral ⚖️\n")
}