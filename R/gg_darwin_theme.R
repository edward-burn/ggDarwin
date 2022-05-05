#' Title
#'
#' @param plot placeholder
#' @param text_size placeholder
#' @param title_size placeholder
#'
#' @return placeholder
#' @export
#'
#' @examples
gg_darwin_theme <- function(plot,text_size=12,title_size=16) {
    ggplot2::theme_bw()+
    ggplot2::theme(
      legend.title = ggplot2::element_blank(),
      axis.text=ggplot2::element_text(size=text_size),
      axis.title.y=ggplot2::element_text(size=text_size,face="bold"),
      axis.title.x=ggplot2::element_text(size=text_size),
      strip.text = ggplot2::element_text(size=text_size, face="bold"),
      strip.text.y.left = ggplot2::element_text(angle = 0),
      strip.background = ggplot2::element_rect( fill="#f7f7f7"),
      legend.text= ggplot2::element_text(size=16),
      plot.title = ggplot2::element_text( face = "bold", size = title_size),
      axis.text.y = ggplot2::element_text(hjust = 0),
      legend.position = "none")
}
