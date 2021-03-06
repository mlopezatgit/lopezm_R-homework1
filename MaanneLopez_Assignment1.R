MAB2111 - Computing for Analytics 1
R Assignment No. 1 
Submitted by: Lopez, Maanne

---

library('readxl')


##WHO dataset
WHO <- read.csv('WHO.csv')


# country with the lowest literacy
min_literacy <- min(WHO$LiteracyRate, na.rm = TRUE)
min_literacy_row <- subset(WHO, LiteracyRate == min_literacy)
print(min_literacy_row$Country)


# richest country in Europe based on GNI
# subset.europe
europe <- subset(WHO, Region == 'Europe')
max_gni_europe <-max(europe$GNI, na.rm = TRUE)
row_with_max_gni_europe <- subset(europe, GNI == max_gni_europe)
print(row_with_max_gni_europe$Country)


# Mean Life expectancy of countries in Africa
# subset.africa
africa <- subset(WHO, Region == 'Africa')
mean_LifeExpectancy_africa <- mean(africa$LifeExpectancy, na.rm = TRUE)
mean_LifeExpectancy_africa


# Number of countries with population greater than 10,000
countries_over_10K <- subset(WHO, Population > 10000)
dim(countries_over_10K)[1]


# Top 5 countries in the Americas with the highest child mortality
# subset.americas
americas <- subset(WHO, Region == 'Americas')
index_decreasing_ChildMortality_americas <- order(americas$ChildMortality, decreasing = TRUE)
americas_ordered_ChildMortality <- americas[index_decreasing_ChildMortality_americas,]
ChildMortality_top5_americas_head <- head(americas_ordered_ChildMortality,5)
ChildMortality_top5_americas_indexing <- americas_ordered_ChildMortality[1:5,]
ChildMortality_top5_americas_indexing$Country



## NBA dataset
NBA <- read_excel('Historical NBA Performance.xlsx')

# The year Bulls has the highest winning percentage 
# subset.bulls
bulls <- subset(NBA, Team == 'Bulls')
max_winpercent_bulls <- max(bulls$`Winning Percentage`)
max_winpercent_bulls_row <- subset(bulls, `Winning Percentage` == max_winpercent_bulls)
max_winpercent_bulls_row$Year


# Teams with an even win-loss record in a year
teams_even_WinLoss <- subset(NBA, `Winning Percentage` == 0.5)
teams_even_WinLoss



## Seasons_Stats
Stats <- read.csv('Seasons_Stats.csv')


# Player with the highest 3-pt attempt rate in a season.
# BONUS


# Player with the highest free throw rate in a season. 
# BONUS


# What year/season does Lebron James scored the highest? 
Lebron <- subset(Stats, Player == 'LeBron James')
Lebron_pts_max <- max(Lebron$PTS, na.rm = TRUE)
subset(Lebron, PTS == Lebron_pts_max)$Year


# What year/season does Michael Jordan scored the highest? 
Jordan <- subset(Stats, Player == 'Michael Jordan*')
subset(Jordan, PTS == max(Jordan$PTS))$Year


# Player efficiency rating of Kobe Bryant in the year where his MP is the lowest?
KobeBryant <- subset(Stats, Player =='Kobe Bryant')
subset(KobeBryant, MP == min(KobeBryant$MP))$PER



## National Universities Rankings
NURankings <- read.csv('National Universities Rankings.csv')


# University with the most number of undergrads 
print(NURankings[which.max(NURankings$Undergrad.Enrollment),]$Name)


# Average Tuition in the Top 10 University
top10 <- NURankings[order(NURankings$Rank),][1:10,]
top10$tuition <- gsub(pattern = "\\$|\\,",replacement = "", top10$Tuition.and.fees)
mean(as.numeric(top10$tuition))


# END OF CODE
