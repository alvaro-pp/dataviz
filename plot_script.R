library(ggplot2)
setwd("/Users/alvaro/research/UGR/IECA_2020/R/dataviz")

# First plot. Differences in daily mobility by age-group
daily_activities <- as.factor(c(rep("Grocery shopping", 4), rep("Buy medicine", 4), rep("Bring food or meds to others", 4), rep("Exercise", 4), rep("Going to the doctor", 4), rep("Take out the trash", 4), rep("Social", 4), rep("Shopping", 4)))
age_group <- as.factor(c("16-29", "30-39", "40-64", "65+","16-29", "30-39", "40-64", "65+","16-29", "30-39", "40-64", "65+","16-29", "30-39", "40-64", "65+","16-29", "30-39", "40-64", "65+","16-29", "30-39", "40-64", "65+","16-29", "30-39", "40-64", "65+","16-29", "30-39", "40-64", "65+"))
percentage <- c(66, 81, 79, 38, 32, 45, 54, 36, 22, 23, 22, 3, 12, 14, 8, 7, 2, 3, 1, 3, 24, 25, 22, 17, 1, 2, 1, 0, 2, 3, 3, 2)
D <- data.frame(daily_activities, age_group, percentage)

tiff("age.tiff", units="in", width=10, height=7, res=300)
ggplot(D, aes(x = daily_activities, y= percentage, fill =age_group))+
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Percentage of the population that left their homes to carry out daily activities during the de-escalation of the \npandemic in Andalucía (April-May 2020), by age group",
       x = "Daily activities",
       y = "%",
       fill = "Age group",
       caption = "Álvaro Padilla Pozo. Source: Encuesta Social 2020. Hábitos y condiciones de vida de la población andaluza durante el estado de alarma")+
  theme_classic()+
  scale_fill_brewer(palette = "Set2", limits = c("65+", "40-64", "30-39", "16-29"))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  coord_flip()+
  theme (plot.title = element_text(face = "bold"), plot.title.position = "plot", plot.caption = element_text(hjust = .45))
dev.off()

#Second plot.
daily_activities <- as.factor(c(rep("Grocery shopping", 1), rep("Buy medicine", 1), rep("Bring food or meds to others", 1), rep("Exercise", 1), rep("Going to the doctor", 1), rep("Take out the trash", 1), rep("Social", 1), rep("Shopping", 1), rep("Grocery shopping", 1), rep("Buy medicine", 1), rep("Bring food or meds to others", 1), rep("Exercise", 1), rep("Going to the doctor", 1), rep("Take out the trash", 1), rep("Social", 1), rep("Shopping", 1)))
sex <- as.factor(c(rep("Men", 8), rep("Women",8)))
percentage <- c(73, 46, 20, 11, 2, 25, 1, 3, 56, 39, 14, 8, 3, 17, 1, 1)
D <- data.frame(daily_activities, sex, percentage)

tiff("sex.tiff", units="in", width=10, height=7, res=300)
ggplot(D, aes(x = daily_activities, y= percentage, fill =sex))+
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Percentage of the population that left their homes to carry out daily activities during the de-escalation of the \npandemic in Andalucía (April-May 2020), by sex",
       x = "Daily activities",
       y = "%",
       fill = "Sex",
       caption = "Álvaro Padilla Pozo. Source: Encuesta Social 2020. Hábitos y condiciones de vida de la población andaluza durante el estado de alarma")+
  theme_classic()+
  scale_fill_brewer(palette = "Set2", limits = c("Women", "Men"))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  coord_flip()+
  theme (plot.title = element_text(face = "bold"), plot.title.position = "plot", plot.caption = element_text(hjust = .45))
dev.off()

#Third plot
daily_activities <- as.factor(c(rep("Grocery shopping", 2), rep("Buy medicine", 2), rep("Bring food or meds to others", 2), rep("Exercise", 2), rep("Going to the doctor", 2), rep("Take out the trash", 2), rep("Social", 2), rep("Shopping", 2)))
exposure <- as.factor(c("No", "Yes", "No", "Yes", "No", "Yes", "No", "Yes", "No", "Yes", "No", "Yes", "No", "Yes", "No", "Yes"))
percentage <- c(34, 74, 41, 49, 15, 25, 9, 10, 2, 3, 20, 27, 1, 2, 2, 4)
D <- data.frame(daily_activities, exposure, percentage)

tiff("exposure.tiff", units="in", width=10, height=7, res=300)
ggplot(D, aes(x = daily_activities, y= percentage, fill =exposure))+
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Percentage of the population that left their homes to carry out daily activities during the de-escalation of the \npandemic in Andalucía (April-May 2020), by kith and kin's exposure to COVID-19 (Yes/No)",
       x = "Daily activities",
       y = "%",
       fill = "Kith and kin's exposure to COVID-19",
       caption = "Álvaro Padilla Pozo. Source: Encuesta Social 2020. Hábitos y condiciones de vida de la población andaluza durante el estado de alarma")+
  theme_classic()+
  scale_fill_brewer(palette = "Set2",limits = c("Yes", "No"))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  coord_flip()+
  theme (plot.title = element_text(face = "bold"), plot.title.position = "plot", plot.caption = element_text(hjust = .45))
dev.off()
