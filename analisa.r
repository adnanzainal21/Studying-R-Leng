#install lib
install.packages('tidyverse')
install.packages('yfR')

#using lib
library(tidyverse)
library(tibble)
library(dplyr)
library(yfR)
library(ggplot2)


myfile <- 'data/AÇÕES.csv'

read_myfile <- read_delim(myfile,
                          delim = ';',
                          col_types = cols(),
                          locale = locale(decimal_mark = ',')
                          )

df_wallet <- tibble(read_myfile)

str(df_wallet)


buy <- filter(df_wallet, OBSERVATION == "COMPRA")
sale <- filter(df_wallet, OBSERVATION == "VENDA")

buy_price <- buy$QTD * buy$PRICE_ACTUAL

sale_price <- sale$QTD * sale$PRICE_MEDIUM

#total price wallet
wallet <- sum(buy_price) - sum(sale_price)

ticker <- paste0(df_wallet$TICKER,".SA")
first_date <- Sys.Date()-5000
last_date <- Sys.Date()
bench_ticker <- '^BVSP'

output_line <- yf_get(tickers = ticker,
                                first_date = first_date,
                                last_date = last_date,
                                bench_ticker = bench_ticker
                               )

p <- ggplot(output_line, aes(x= ref_date, y= price_adjusted, color = 'red'))+ geom_point() + geom_line()
p

