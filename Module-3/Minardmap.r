#' ## plot path of troops, 
## Napoleon's troops advance and retreat from Russia
plot_troops <- ggplot(Minard.troops, aes(x=long, y=lat)) +
  geom_path(aes(size = survivors, colour = direction, group = group),
  lineend = "round", linejoin = "round") +
  labs(x = NULL, y = NULL,title="Napoleon’s Grand Army",subtitle="Advance and Return from Russia",Caption="Minard Map")
  plot(plot_troops) + 
  scale_size(range=c(0.5,10),guide=FALSE) +
  scale_colour_manual(values = c("#DFC17E", "#252523"))
  
  ggsave("MinardMap.png",height=15,width=20,unit="cm")
