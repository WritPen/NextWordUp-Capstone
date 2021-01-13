# NextWordUp-Capstone
Authored by WritPen

The author for this project has not done word prediction previously.

I started this project by learning about the science of how a text is constructed, calculating and exploring the data with ngrams. The exploratory data analysis is in the Milestone 1 files.

Then the author pondered about how to best build an algorithm, and the theory of the relationships between words. I read resources about text mining and prediction, including R packages related to text mining and text prediction, and research published on building machine learning models that map to the nuanced patterns that humans use when building texts.

The resources included:
R packages
Text2vec - https://cran.r-project.org/web/packages/text2vec/vignettes/text-vectorization.html
Bag-o-words - https://www.rdocumentation.org/packages/qdap/versions/0.2.5/topics/bag.o.words
Sentimentr - https://www.rdocumentation.org/packages/sentimentr/versions/2.7.1 
Quanteda - https://quanteda.io/reference/tokens_wordstem.html
Inspiring Research
Uses a neural network approach to predicting the next word.
	- https://en.wikipedia.org/wiki/Language_model#Neural_network 
Natural language processing article and R coding demonstrations: https://kenbenoit.net/pdfs/text_analysis_in_R.pdf

From this review of the existing literature, there seem to be mixed methods about trying to mathematically calculate relationships between words in a sentence structure, or whether specific words usually follow one another. Which is to say, if words were replaced with numbers, that one person might write as: "2, 4, 6, 8, 10" and their relative "8, 4, 6, 10", while a third writer might write "6, 4, 7, 1, 10". However, while specific words tend to cluster, the maths of the specific order of the words is not straightforward.

Given the flexibility of the grammar of the English language, the author chose to set aside complex maths to speed processing time of the anticipated product, a word-predictor app, as a more complex mathematical model did not necessarily seem to yield incredibly different results.

## About the Application
This app works on the simple concept of popularity of words. It takes the logic of frequent trigram or quadgram, compares the bigram or trigram input by the user seeking another word, and we returns the next word which will have the highest frequency from the ngrams, the simple maths allow for a fast prediction.

You will need R packages:
	- tidyverse
	- tm
	- Rweka
	- Quanteda
	- Purrr
	- Dplyr
	- Stringr
	- Tibble
	- Knitr
	- Ggplot2
	- Caret

You can use the shiny app at: https://writpen.shinyapps.io/LanguageProcessing/
or by running in your RStudio console

library(shiny)
runUrl( "<https://writpen.shinyapps.io/LanguageProcessing>")

The matching presentation for the project is here: RPubs - Next Word Up Presentation
