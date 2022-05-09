#' Title
#'
#' @param reference_size placeholder
#'
#' @return placeholder
#' @export
#'
#' @examples
theme_darwin <- function(reference_size = 15) {

  # colors
  color.border <- "#ffffff"
  color.background <- "#ffffff"
  color.grid.major <- "#d9d9d9"
  color.axis.text <- "#252525"
  color.axis.title <- "#252525"

  # theme
  ggplot2::theme_bw(base_size = reference_size) +
    # background
    ggplot2::theme(panel.background = ggplot2::element_rect(fill = color.background, color = color.background)) +
    ggplot2::theme(plot.background = ggplot2::element_rect(fill = color.background, color = color.background)) +
    ggplot2::theme(panel.border = ggplot2::element_rect(color = color.border)) +
    # grid
    ggplot2::theme(panel.grid.major = ggplot2::element_line(color = color.grid.major, size = .25)) +
    ggplot2::theme(panel.grid.minor = ggplot2::element_blank()) +
    ggplot2::theme(panel.grid.major.x = ggplot2::element_blank()) +
    ggplot2::theme(panel.grid.minor.x = ggplot2::element_blank()) +
    # axis
    ggplot2::theme(axis.text.x = ggplot2::element_text(size = reference_size, color = color.axis.text)) +
    ggplot2::theme(axis.text.y = ggplot2::element_text(size = reference_size, color = color.axis.text)) +
    ggplot2::theme(axis.title.x = ggplot2::element_text(
      size = reference_size, color = color.axis.title,
      vjust = 0
    )) +
    ggplot2::theme(axis.title.y = ggplot2::element_text(
      size = reference_size, color = color.axis.title,
      vjust = 1.25
    )) +
    ggplot2::theme(axis.ticks = ggplot2::element_blank()) +
    # legend
    ggplot2::theme(legend.background = ggplot2::element_rect(fill = color.background)) +
    ggplot2::theme(legend.text = element_text(size = reference_size, color = color.axis.title)) +
    ggplot2::theme(legend.title = element_blank()) +
    ggplot2::theme(legend.position = "top") +
    # margins
    ggplot2::theme(plot.margin = grid::unit(c(0.35, 0.2, 0.3, 0.35), "cm"))
}
