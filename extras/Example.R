library(dplyr)
library(ggplot2)
library(lubridate)
devtools::load_all()

Sys.setlocale("LC_TIME", "English")

# Example 1-----
head(economics)

# Information required
time <- "year" # Time units (day, month, week or year)
interval <- 5  # Interval between x-axis breaks
start <- min(economics$date) # Start date
end <- max(economics$date) # End date

# Plot
y.var <- economics$uempmed
y.name <- "Unemployment"
economics %>%
  ggplot()+
  geom_point(aes(date,y=y.var))+
  geom_line(aes(date,y=y.var), size=0.8)+
  scale_y_continuous(name= y.name)+
  xlab("")+
  theme(axis.text.x = element_text(angle=90, size =9),
        axis.title.y = element_text(size = 9),
        plot.margin=grid::unit(c(1,1,1,1), "cm"))+
  gg_darwin_time_series(time,start,end, interval)+
  gg_darwin_theme()

# Example 2-------
set.seed(124)
dates <- seq(as.Date("2018-01-01"), as.Date("2022-01-01"), by="1 month")
df <- data.frame(
  date = dates,
  price = runif(length(dates))
)
head(df)


# Information required
time <- "month" # Time units (day, month, week or year)
interval <- 12 # Interval between x-axis breaks
start <- min(df$date) # Start date
end <- max(df$date) # End date

y.var <- df$price
y.name <- "Price"

# Plot
df %>%
  ggplot()+
  geom_point(aes(date,y=y.var))+
  geom_line(aes(date,y=y.var), size=0.8)+
  scale_y_continuous(name= y.name)+
  xlab("")+
  theme(axis.text.x = element_text(angle=90, size =9),
        axis.title.y = element_text(size = 9),
        plot.margin=grid::unit(c(1,1,1,1), "cm"))+
  gg_darwin_time_series(time,start,end, interval)+
  gg_darwin_theme()

