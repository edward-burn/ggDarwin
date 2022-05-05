gg_darwin_theme <- function(plot,text_size=12,title_size=16) {
    theme_bw()+
    ggplot2::theme(
      legend.title = element_blank(),
      axis.text=element_text(size=text_size),
      axis.title.y=element_text(size=text_size,face="bold"),
      axis.title.x=element_text(size=text_size),
      strip.text = element_text(size=text_size, face="bold"),
      strip.text.y.left = element_text(angle = 0),
      strip.background = element_rect( fill="#f7f7f7"),
      legend.text=element_text(size=16),
      plot.title = element_text( face = "bold", size = title_size),
      axis.text.y = element_text(hjust = 0),
      legend.position = "none")
}
