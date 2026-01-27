
questionaire <- read.csv(file.choose(), header = T, na.strings = "", stringsAsFactors = T)

library(readxl)
visitor_questionaire <- read_excel(file.choose())

str(visitor)
summary(visitor)
head(visitor)

common_wood <- subset(visitor, site == "Common_Wood")
bignor_tw <- subset(visitor, site == "Bignor_Tail_Wood")
norewood <- subset(visitor, site == "Norewood")

# == means “is equal to?”
# = (single equals) means “assign this value” when subsetting, rhe double equals sign allows it to say 'if this value is this, then carry on'.


visitor_count <- read_excel(file.choose())

str(visitor_count)

nrow(visitor_count)

cw <- subset(visitor_count, site == "Common_Wood")
btw <- subset(visitor_count, site == "Bignor_Tail_Wood")
nw <- subset(visitor_count, site == "Norewood")

mean(cw$visitors)
mean(btw$visitors)
mean(nw$visitors)

median(cw$visitors)
median(btw$visitors)
median(nw$visitors)

boxplot(cw$visitors ~ btw$visitors)

summary(visitor_count)

boxplot(visitor_count$visitors ~ visitor_count$site, xlab = "Site", ylab = "Visitor frequency")

table(visitor_count)

library(dplyr)

visitor_count %>% 
  group_by(site) %>%
  summarise(mean_visitors = mean(visitors), median_visitors = median(visitors), sd_visitors = sd(visitors), min_visitors = min(visitors), max_visitors = max(visitors), n = n())
            






