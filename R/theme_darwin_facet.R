

theme_darwin_facet <- function(reference_size = 15) {
    ggplot2::theme(panel.border =ggplot2::element_rect(color = "black")) +
    # facets
    ggplot2::theme(strip.text = ggplot2::element_text(size = 14, face = "bold")) +
    ggplot2::theme(strip.text.y.left = ggplot2::element_text(angle = 0)) +
    ggplot2::theme(strip.text.y.right = ggplot2::element_text(angle = 0)) +
    ggplot2::theme(strip.background = ggplot2::element_rect(fill = "#f7f7f7")) +
    ggplot2::theme(plot.title = ggplot2::element_text(face = "bold", size = reference_size)) +
    ggplot2::theme(panel.spacing.x = unit(0.25, "lines")) +
    ggplot2::theme(panel.spacing.y = unit(0.25, "lines"))
}
