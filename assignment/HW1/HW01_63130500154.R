#Exercise1
Ex1 <- c(10.4, 5.6, 3.1, 6.4, 21.7)
mean(Ex1) #=9.44
sum(Ex1) #=47.2
median(Ex1) #=6.4
sd(Ex1)  #=7.33846
var(Ex1) #=53.853

#Exercise2

# List of Marvel movies (Order by Marvel Phase released)
names <- c("Iron Man","The Incredible Hulk","Iron Man 2","Thor","Captain America: The First Avenger",
           "The Avengers","Iron Man 3","Thor: The Dark World","Captain America: The Winter Soldier",
           "Guardians of the Galaxy","Avengers: Age of Ultron","Ant-Man","Captain America: Civil War",
           "Doctor Strange","Guardians of the Galaxy 2","Spider-Man: Homecoming","Thor: Ragnarok","Black Panther",
           "Avengers: Infinity War","Ant-Man and the Wasp","Captain Marvel","Avengers: Endgame",
           "Spider-Man: Far From Home","WandaVision","Falcon and the Winter Soldier","Loki","Black Widow")

# List of released year of Marvel movies
years <- c(2008,2008,2010,2011,2011,2012,2013,2013,2014,2014,2015,2015,2016,2016,
           2017,2017,2017,2017,2018,2018,2019,2019,2019,2021,2021,2021,2021)

# Or using Function
years <- c(2008,2008,2010,2011,2011,2012,rep(2013:2016,each=2),
           rep(2017,4),rep(2018,2),rep(2019,3),rep(2021,4))


#2.1. Create data structure in variable named marvel_movies and explain why you using this data structure ?
marvel_movies <- data.frame(names, years)
View(marvel_movies)
#????????? data.frame ?????????????????????????????????????????????????????????????????????????????????

#2.2 Finding the information:
#2.2.1 The numbers of movies
length(names) #=27

#2.2.2Finding the 19th movies name
names[19] #= Avengers: Infinity War

#2.2.3 Which year is most released movies
# = 2017 1.Guardians of the Galaxy 2 2.Spider-Man: Homecoming 3.Thor: Ragnarok 	4.Black Panther
# = 2021 1.WandaVision 2.Falcon and the Winter Soldier 3.Loki 4.Black Widow




