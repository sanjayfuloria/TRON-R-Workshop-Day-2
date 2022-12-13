?write.table()
?write.csv()

?"<-"

??setNames
sessionInfo()

c(1,2,3)
c('d','e','f')

?help("paste")

?paste

paste(c("a","b"), "c")

paste(c("a","b"), "c", ",")

paste(c("a","b"), "c", sep = ",")

paste(c("a","b"),"c", collapse = "|")

paste(c("a","b"),"c", sep = ",", collapse = "|")

cats <- data.frame(coat = c("calico","black","tabby"),
                   weight = c(2.1, 5.0, 3.2),
                   likes_string = c(1,0,1))

write.csv(x = cats, file = "feline-data.csv", row.names = FALSE)


cats_new <- read.csv("feline-data.csv", stringsAsFactors = TRUE)

cats_new$weight
cats_new$coat
cats_new$likes_string

cats_new$weight + 2

paste("My cat is", cats_new$coat)

cats_new$weight + cats_new$coat

typeof(cats$weight)
typeof(cats$coat)
typeof(cats$likes_string)

typeof(3.14)
typeof(1+1i)


my_vector <- vector(mode = "character", length = 3)
my_vector
str(my_vector)

str(cats$weight)

combine_vector <- c(2,6,3)
combine_vector

quiz_vector <- c(2,6,'3')

typeof(quiz_vector)

coercion_vector <- c('a', TRUE)
coercion_vector

typeof(coercion_vector)

logical -> integer ->numeric -> complex -> character

character_vector_example <- c("0","2","4")
character_vector_example

character_coerced_to_numeric <- as.numeric(character_vector_example)
character_coerced_to_numeric

cats$likes_string <- as.logical(cats$likes_string)
cats$likes_string

ab_vector <- c('a','b')
ab_vector

combine_example <- c(ab_vector, 'SWC')
combine_example

mySeries <- 1:10
mySeries

seq(1,10, by = 0.1)

sequence_example <- seq(10)
head(sequence_example , n = 2)

tail(sequence_example, n = 4)

length(sequence_example)

class(sequence_example)

typeof(sequence_example)

my_example <- 5:8
names(my_example) <- c("a","b","c","d")
my_example

names(my_example)

x <- 1:26
x <- x * 2
names(x) <- LETTERS
x

str(cats$weight)

str(cats$likes_string)

str(cats$coat)

names(cats)

names(cats)[2] <- "weight_kg"
cats

coats <- c("tabby", "tortoiseshell", "tortoiseshell", "black", "tabby")

coats

str(coats)

CATegories <- factor(coats)
class(CATegories)

str(CATegories)

typeof(coats)
typeof(CATegories)


list_example <- list(1, "a", 1+4i)
list_example

another_list <- list(title = "Numbers", numbers = 1:10, data = TRUE)
another_list

typeof(cats)

cats$coat

cats[,1]

typeof(cats[,1])

cats[1,3]

matrix_example <- matrix(0, ncol = 6, nrow = 3)
matrix_example

class(matrix_example)

typeof(matrix_example)

str(matrix_example)

dim(matrix_example)

nrow(matrix_example)

ncol(matrix_example)

x <- matrix(1:50, ncol = 5, nrow = 10)
x <- matrix(1:50, ncol = 5, nrow = 10, byrow = TRUE)

x

dataTypes <- c("double","integer","complex", "character", "logical")
dataStructures <- c("data.frame", "vector", "factor","list", "matrix")
answer <- list(dataTypes,dataStructures)

answer

age <- c(2,3,5)
cats

cbind(cats, age)

new_row <- list("tortoiseshell", 3.3, TRUE, 9)
cats <- rbind(cats, new_row)

cats$coat <- as.factor(cats$coat)

levels(cats$coat)

cats$coat <- as.numeric(cats$coat)

typeof(cats$coat)

cats <- data.frame(coat = c("calico","black","tabby"),
                   weight = c(2.1, 5.0, 3.2),
                   likes_string = c(1,0,1))

levels(cats$coat)

cats$coat <- as.factor(cats$coat)

levels(cats$coat) <- c(levels(cats$coat), "tortoiseshell")

cats <- rbind(cats, list("tortoiseshell", 3.3, TRUE, 9))

str(cats)

cats

age <- c(2,3,5,7)
cats <- cbind(cats, age)

human_age <- cats$age * 7

human_age <- factor(human_age)

human_age <- as.character(human_age)

human_age <- as.numeric(human_age)

typeof(human_age)

str(cats)

cats

cats1<- cats[-3,]

write.csv(cats1, "cats1.csv")

cats1

cats1[c(-1,-2),]

cats <- data.frame(coat = c("calico","black","tabby"),
                   weight = c(2.1, NA, 3.2),
                   likes_string = c(1,0,NA))


cats

na.omit(cats)

cats <- data.frame(coat = c("calico","black","tabby"),
                   weight = c(2.1, 5.0, 3.2),
                   likes_string = c(1,0,1))

age <- 
  
  age <- c(2,3,5)
cats <- cbind(cats, age)

cats

cats_without_age <- cats[,-4]

cats_without_age

cats <- rbind(cats_without_age, cats_without_age)

cats

cats <- rbind(cats, cats)
rownames(cats) <- NULL
cats

name_df <- data.frame(first = c("Sanjay"),
                      last = c("Fuloria"),
                      lucky_number = c(6),
                      stringsAsFactors = FALSE)

name_df

name_df <- rbind(name_df, list("Christina", "Jung", 5))

name_df

name_df <- cbind(name_df, coffeetime = c(TRUE, TRUE))

name_df


gapminder <- read.csv("gapminder_data.csv", stringsAsFactors = TRUE)


download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder_data.csv", 
              destfile = "data/gapminder_data.csv")

gapminder_alternate <- read.csv("data/gapminder_data.csv")

View(gapminder)

str(gapminder)

summary(gapminder$country)

typeof(gapminder$year)

typeof(gapminder)

nrow(gapminder)

ncol(gapminder)

dim(gapminder)

colnames(gapminder)

head(gapminder, n=20)
tail(gapminder, n = 10)

library("ggplot2")

ggplot(data=gapminder, mapping = aes(x=gdpPercap, y = lifeExp)) +geom_point()

ggplot(data = gapminder, mapping = aes(x=year, y = lifeExp)) + geom_point()


ggplot(data = gapminder, mapping = aes(x = year, y = lifeExp, color =continent)) + geom_line()

ggplot(data = gapminder, mapping = aes(x=year, y=lifeExp, by = country, color = continent)) + geom_line() + geom_point()

ggplot(data = gapminder, mapping = aes(x=gdpPercap, y=lifeExp)) + geom_point((alpha = 0.5) + scale_x_log10()) + geom_smooth(method = "lm", size = 1.5)

americas <- gapminder[gapminder$continent == "Americas",]

ggplot(data = americas, mapping = aes(x=year,y=lifeExp)) + geom_line()+
  facet_wrap(~country) +
  theme(axis.text.x = element_text(angle = 45))

my_function <- function(parameters){
  #Perform the action
  #Return Value
}

fahr_to_kelvin <- function(temp){
  kelvin <- ((temp - 32) * (5/9)) + 273.15
  return(kelvin)
}

fahr_to_kelvin(32)

fahr_to_kelvin(212)

kelvin_to_celsius <- function(temp){
  celsius <- temp - 273.15
  return(celsius)
}

kelvin_to_celsius(373.15)

fahr_to_kelvin <- function(temp){
  kelvin <- ((temp - 32) * (5/9)) + 273.15
  return(kelvin)
}

kelvin_to_celsius <- function(temp){
  celsius <- temp - 273.15
  return(celsius)
}

fahr_to_kelvin(32)
kelvin_to_celsius(273.15)

fahr_to_celsius <- function(temp){
  celsius <- ((temp - 32) * (5/9))
  return(celsius)
}

fahr_to_celsius(32)

fahr_to_celsius <- function(temp){
  temp_k <- fahr_to_kelvin(temp)
  result <- kelvin_to_celsius(temp_k)
  return(result)
}

fahr_to_celsius(32)

calcGDP <- function(dat){
  gdp <- dat$pop * dat$gdpPercap
  return(gdp)
}

calcGDP(head(gapminder))

calcGDP <- function(dat, year = NULL, country = NULL){
  if(!is.null(year)){
    dat<-dat[dat$year %in% year, ]
  }
  if(!is.null(country)){
    dat<-dat[dat$country %in% country,]
  }
  gdp <- dat$pop * dat$gdpPercap
  
  new <- cbind(dat, gdp = gdp)
  return(new)
}

head(calcGDP(gapminder, year = 2007))

head(calcGDP(gapminder, year = 2007, country = "Albania"))

calcGDP(gapminder, year = 1987, country = "New Zealand")
calcGDP(gapminder, year = 1952, country = "New Zealand")

withGDP <- calcGDP(gapminder)
mean(withGDP[withGDP$continent == "Africa", "gdp"])

mean(withGDP[withGDP$continent == "Americas", "gdp"])


mean(withGDP[withGDP$continent == "Asia", "gdp"])

install.packages("plyr")

library(plyr)

ddply(
  .data = calcGDP(gapminder),
  .variables = "continent",
  .fun = function(x) mean(x$gdp)
)

ddply(
  .data = calcGDP(gapminder),
  .variables = "continent",
  .fun = function(x) mean(x$lifeExp)
)

dlply(
  .data = calcGDP(gapminder),
  .variables = "continent",
  .fun = function(x) mean(x$lifeExp)
)

ddply(
  .data = calcGDP(gapminder),
  .variables = c("continent", "year"),
  .fun = function(x) mean(x$gdp)
)

daply(
  .data = calcGDP(gapminder),
  .variables = c("continent","year"),
  .fun = function(x) mean(x$gdp)
)

d_ply(
  .data = gapminder,
  .variables = "continent",
  .fun = function(x){
    meanGDPperCap <- mean(x$gdpPercap)
    print(paste(
      "The mean GDP per capita for", unique(x$continent),
      "is", format(meanGDPperCap, big.mark = ",")
    ))
  }
)























































