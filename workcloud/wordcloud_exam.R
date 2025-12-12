library(tm)
library(SnowballC)
library(wordcloud)
library(RColorBrewer)

feedback <- readLines("feedback.txt", encoding = "UTF-8")
corpus <- Corpus(VectorSource(feedback))


corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, removeNumbers)
corpus <- tm_map(corpus, removePunctuation)
corpus <- tm_map(corpus, removeWords, stopwords("english"))
corpus <- tm_map(corpus, stripWhitespace)
corpus <- tm_map(corpus, stemDocument)


tdm <- TermDocumentMatrix(corpus)
tdm_matrix <- as.matrix(tdm)
word_freq <- rowSums(tdm_matrix)
word_freq_df <- data.frame(word = names(word_freq), freq = word_freq)
word_freq_df <- word_freq_df[order(-word_freq_df$freq), ]


top10 <- head(word_freq_df, 10)
print("Top 10 Most Frequent Words:")
print(top10)



png("wordcloud_exam.png", width = 800, height = 600)
wordcloud(
    words = word_freq_df$word,
    freq = word_freq_df$freq,
    min.freq = 2,
    max.words = 1000,
    random.order = FALSE,
    colors = brewer.pal(8, "Dark2")
)
dev.off()



rare_words_df <- word_freq_df[order(word_freq_df$freq), ]
rare_words_df <- head(rare_words_df, 5)

png("wordcloud_rare.png", width = 800, height = 600)
wordcloud(
    words = rare_words_df$word,
    freq = rare_words_df$freq,
    min.freq = 1,
    max.words = 5,
    random.order = FALSE,
    colors = brewer.pal(8, "Dark2")
)
dev.off()

message("wordcloud_rare.png generated successfully.")
