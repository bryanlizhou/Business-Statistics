# Bryan Zhou
# Date created: 10/10/2022

# Business Statistics For Contemporary Decision Making 4th Edition
# page 33, problem 2.10
# Construct a pie chart to represent accounting firms data in the United States.
# Net Revenue in the millions for 1997
# Label the slices with the appropriate percentages

# install the necessary packages (skip this if you already installed)
install.packages("tidyverse")

# Load packages
library(tidyverse)

# Create vectors and data frame

# vectors
Firms <- c("Andersen Worldwide", "Ernst & Young", "Deloitte & Touche", 
           "KPMG Peat Marwick", "Cooper & Lybrand", "PriceWaterhouse", "Grant Thornton", 
           "McGladrey & Pullen", "BDO Seidman")

Revenue <- c(5445, 4416, 3600, 2698, 2504, 2344, 289, 270, 240)

# data frame
accounting_firms <- data.frame(Firms, Revenue)

# view
view(accounting_firms)

# data structure
glimpse(accounting_firms)

# calculate the total revenues and percentages of each revenues

# percentage of  as decimal
accounting_firms <- accounting_firms %>% mutate(pct_decimal = (Revenue/sum(Revenue)))

# take a look
glimpse(accounting_firms)

# convert it to actual percent
accounting_firms <- accounting_firms %>% mutate(pct = round(pct_decimal * 100, digit=1))

# glimpse
glimpse(accounting_firms)

# pie chart with appropriate labels
# Each slice of the pie adds up to 100%.

ggplot(accounting_firms, aes(x = "", y = pct, fill=Firms)) + geom_bar(stat = "identity", width = 1, color ="white") +
  coord_polar("y", start = 0) + theme_void() + geom_text(aes(label = paste0(pct, "%")), position = position_stack((vjust =0.5))) +
  labs(x= NULL, y = NULL, fill = "Accounting Firms", title ="Pie Chart of Accounting Firms Net Revenue, 1997")

