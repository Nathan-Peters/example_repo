library(tidyverse)

astronauts <- read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-07-14/astronauts.csv')

astronauts %>% count(nationality, sort=TRUE)

astronauts_2 <- astronauts %>%  
  mutate(mission_age=year_of_mission+year_of_birth, 
         nationality=as.factor(case_when(
           nationality=="U.S." ~ "US", 
           str_detect(nationality,"Russia")~"Russia", 
           TRUE ~ "Other")
           ), 
         mission_number=as.factor(mission_number))


astronauts_2$nationality<-factor(astronauts_2$nationality, levels(astronauts_2$nationality)[c(3:1)])  #reorder nationality in reverse order

astronauts_2 %>% ggplot(aes(x=year_of_mission, y=mission_age, color=mission_number, size= hours_mission))+
  geom_point(alpha=0.5, aes(shape=nationality))+
  facet_wrap(~nationality, nrow=3)
