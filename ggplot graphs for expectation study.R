library(tidyverse)
library(Hmisc)
library(extrafont)

data1 = data |> select("id", "previous_knowledge", c("stretch_balance_belief":"yoga_taichi_belief"))

#  long form of  beliefs
data2 = data1 |> gather(key = "activity", value = "value", "stretch_balance_belief":"yoga_taichi_belief")

# data3 = data2 |> group_by(activity) |> summarize(mean = mean(value))
data2$activity = factor(data2$activity, levels = c("relaxation_belief", "yoga_taichi_belief","walking_belief", "stretch_balance_belief", "lectures_belief", "resistance_belief"))

graph = data2 |> ggplot(aes(x = activity, y = value, value)) +
        geom_point(size=2, position=position_jitter(width=.15, height = .2), alpha=.13) +
        theme_classic() +
        stat_summary(geom="point", fun=mean, size=4, col="black") +
        stat_summary(geom="errorbar", col="black", fun.data="mean_cl_normal", width=.07, linewidth=1) +
        xlab("\nActivity") +
        ylab("\nExpectations to Improve (1 - 5)\n") +
        scale_x_discrete(labels=c("Relaxation","Yoga/Tai Chi/Meditation", "Walking", "Stretch & Balance", "Video Lectures", "Resistance"))+
        theme(axis.text=element_text(size=14, family="Times New Roman"),axis.title=element_text(size=14, family="Times New Roman")) +
        theme(strip.background = element_blank(), strip.text.x = element_text(size=12, family="Times New Roman"))

graph

tiff("Expecxtations figure activities.tiff", units="in", width=10.5, height=6, res=300)
graph
dev.off()

#  try  graph for two groups and mean groups

data3 = data2 |> filter(previous_knowledge == 1)
data4 = data2 |> filter(previous_knowledge == 2)

data2$previous_knowledge = as.factor(data2$previous_knowledge)

graph = data2 |> ggplot(aes(x = activity, y = value, color = previous_knowledge)) +
  geom_point(size=2, position=position_jitter(width=.15, height = .2), alpha=.15) +
  theme_classic() +
  scale_color_manual(values = c("red", "blue"), labels = c("Yes", "No")) +
  #stat_summary(geom="point", fun=mean, size=4, col="black") +
  #stat_summary(geom="errorbar", col="black", fun.data="mean_cl_normal", width=.07, linewidth=1) +
  #stat_summary(geom="line", fun=mean, size=1, col="black", aes(group = 1)) +
  stat_summary(data = data3, geom="point", fun=mean, size=3, col="red", position=position_nudge(x =.03)) +
  #stat_summary(data = data3, geom="line", fun=mean, size=1, col="red", position=position_nudge(x =.03), aes(group = 1)) +
  stat_summary(data = data3, geom="errorbar", col="red", fun.data="mean_cl_normal", width=.07, linewidth=1, position=position_nudge(x = .03)) +
  stat_summary(data = data4, geom="point", fun=mean, size=3, col="blue", position=position_nudge(x = -.03)) +
  #stat_summary(data = data4, geom="line", fun=mean, size=1, col="blue", position=position_nudge(x =-.03), aes(group = 1)) +
  stat_summary(data = data4, geom="errorbar", col="blue", fun.data="mean_cl_normal", width=.07, linewidth=1, position=position_nudge(x = -.03)) +
  xlab("\nActivity") +
  ylab("\nExpectations to Improve (1 - 5)\n") +
  scale_x_discrete(labels=c("Relaxation","Yoga/Tai Chi/Meditation", "Walking", "Stretch & Balance", "Video Lectures", "Resistance"))+
  guides(color = guide_legend("Previous Knowledge"), family = "Times New Roman") +
  theme(axis.text=element_text(size=12, family="Times New Roman"),axis.title=element_text(size=12, family="Times New Roman")) +
  theme(strip.background = element_blank(), strip.text.x = element_text(size=12, family="Times New Roman")) +
  theme(legend.text = element_text(size = 10), legend.title = element_text(size = 12), text=element_text(family="Times New Roman"))

graph

tiff("Expecxtations figure two groups of knowledge.tiff", units="in", width=10.5, height=6, res=300)
graph
dev.off()

