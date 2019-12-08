
# if(length(setdiff(names(match.call()), "length")))
line_fun <- function(arg, length_arg) {
  as.function(
    c(alist(colour = NULL, size = NULL, linetype = NULL,
            lineend = NULL, color = NULL, arrow = NULL,
            inherit.blank = FALSE),
      # add argument if length_arg is given
      if(!missing(length_arg)) alist(length=),
      as.call(c(
        quote(ggplot2::theme),
        setNames(alist(ggplot2::element_line(
          colour, size, linetype, lineend, color, arrow, inherit.blank)),
          as.character(substitute(arg))
        ),
        if(!missing(length_arg)) {
          setNames(
            alist(if(grid::is.unit(length)) length else unit(length, "pt")),
            as.character(substitute(length_arg))
          )
        }
      ))
    )
  )
}

# blank_fun <- function(arg) {
#   as.function(
#     c(alist(),
#       as.call(c(
#         quote(ggplot2::theme),
#         setNames(alist(ggplot2::element_blank()),
#           as.character(substitute(arg))
#         )
#       ))
#     )
#   )
# }


blank_fun <- function(arg, align_arg) {
  as.function(
    c(alist(),
      # add argument if align_arg is given
      if(!missing(align_arg)) alist(align=),
      as.call(c(
        quote(ggplot2::theme),
        setNames(alist(ggplot2::element_blank()),
          as.character(substitute(arg))
        ),
        if(!missing(align_arg)) {
          setNames(
            alist(NULL),
            as.character(substitute(align_arg))
          )
        }
      ))
    )
  )
}

null_fun <- function(arg) {
  as.function(
    c(alist(),
      as.call(c(
        quote(ggplot2::theme),
        setNames(alist(NULL),
                 as.character(substitute(arg))
        )
      ))
    )
  )
}

legend_none_fun <- function(arg) {
  as.function(
    alist(ggplot2::theme(legend.position = "none"))
    )
}

rect_fun <- function(arg) {
  as.function(
    c(alist(fill = NULL, colour = NULL, size = NULL,
            linetype = NULL, color = NULL, inherit.blank = FALSE),
      as.call(c(
        quote(ggplot2::theme),
        setNames(alist(ggplot2::element_rect(
          fill, colour, size, linetype, color, inherit.blank)),
          as.character(substitute(arg))
        )
      ))
    )
  )
}

text_fun <- function(arg, align_arg) {
  as.function(
    c(alist(family = NULL, face = NULL, colour = NULL,
            size = NULL, hjust = NULL, vjust = NULL, angle = NULL,
            lineheight = NULL, color = NULL, margin = NULL, debug = NULL,
            inherit.blank = FALSE),
      # add argument if align_arg is given
      if(!missing(align_arg)) alist(align=),
      as.call(c(
        quote(ggplot2::theme),
        setNames(alist(ggplot2::element_text(
          family, face, colour, size, hjust, vjust, angle,
          lineheight, color, margin, debug, inherit.blank)),
          as.character(substitute(arg))
        ),
        if(!missing(align_arg)) {
          setNames(
            alist(align),
            as.character(substitute(align_arg))
          )
        }
      ))
    )
  )
}

simple_arg_fun <- function(arg, default_args) {
  as.function(
    c(eval(substitute(alist(x=default_args))),
      as.call(c(
        quote(ggplot2::theme),
        setNames(if(missing(default_args)) alist(x) else alist(match.arg(x)),
                 as.character(substitute(arg))
        )
      ))
    )
  )
}

unit_fun <- function(arg) {
  as.function(
    c(alist(x=),
      as.call(c(
        quote(ggplot2::theme),
        setNames(alist(if(grid::is.unit(x)) x else unit(x, "pt")),
                 as.character(substitute(arg))
        ))
      )
    )
  )
}

margin_fun <- function(arg) {
  as.function(
    c(alist(t = 0, r = 0, b = 0, l = 0, unit = "pt"),
      as.call(c(
        quote(ggplot2::theme),
        setNames(alist(margin(
          t, r, b, l, unit)),
          as.character(substitute(arg))
        )
      ))
    )
  )
}

