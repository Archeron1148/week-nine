# Hope Loiselle's Code
# your task: annotate it with what you think
# she's trying to do; and compare it with
# Marwick's original paper: what aspect of his analysis
# does this bit of code address, and do your findings
# match up with his?

###<- triple pound sign comments by Archeron1148

###load in data
library(tidyverse)
flakes_TL <- read_csv("Tham_Lod_Area_1_lithics-1.csv")
flakes_BR <- read_csv("Ban_Rai_Area_3_lithics-1.csv")

###combine two datasets into one
# dorsal cortex and dorsal scars
TL_dorsal <-
  flakes_TL %>%
  select(DORSAL_COR, DORSAL_SCA, SITE, EXCAVATION)
BR_dorsal <-
  flakes_BR %>%
  select(DORSAL_COR, DORSAL_SCA, SITE, EXCAVATION)
TL_BR_dorsal <- bind_rows(TL_dorsal, BR_dorsal)

###create a boxplot on the data
ggplot(TL_BR_dorsal, aes(SITE, DORSAL_COR)) +
  geom_boxplot()

###find the ratio of the data where DORSAL_COR is zero vs not zero by site
dorsal_cortex_proportion <-
  TL_BR_dorsal %>%
  group_by(SITE, EXCAVATION, DORSAL_COR) %>%
  tally() %>%
  mutate(DORSAL_COR = ifelse(DORSAL_COR == 0, "zero", "not zero")) %>%
  group_by(SITE, EXCAVATION, DORSAL_COR) %>%
  tally() %>%
  filter(!is.na(DORSAL_COR)) %>%
  spread(DORSAL_COR, n) %>%
  mutate(dorsal_proportion = zero / (`not zero` + zero))

###plot proportion by site
ggplot(dorsal_cortex_proportion, aes(SITE, dorsal_proportion)) +
  geom_boxplot()

###after a quick glance at the article compared with the plot produced by this script, it looks like Hope was trying to recreate figure 5
###the second figure does not match, though I cannot tell why
