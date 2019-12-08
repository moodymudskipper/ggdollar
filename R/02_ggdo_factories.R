## RECT

fill_fun <- function(arg) {
  as.function(
    c(alist(fill = NULL),
      as.call(c(
        quote(ggplot2::theme),
        setNames(alist(element_rect(
          fill = fill)),
          as.character(substitute(arg))
        )
      ))
    )
  )
}

color_border_fun <- function(arg) {
  as.function(
    c(alist(color = NULL),
      as.call(c(
        quote(ggplot2::theme),
        setNames(alist(element_rect(
          color = color)),
          as.character(substitute(arg))
        )
      ))
    )
  )
}

resize_border_fun <- function(arg) {
  as.function(
    c(alist(size = NULL),
      as.call(c(
        quote(ggplot2::theme),
        setNames(alist(element_rect(
          size = size)),
          as.character(substitute(arg))
        )
      ))
    )
  )
}


set_border_linetype_int_fun <- function(arg) {
  as.function(
    c(alist(linetype  = NULL),
      as.call(c(
        quote(ggplot2::theme),
        setNames(alist(element_rect(
          linetype  = {
            stopifnot(is.numeric(linetype) && length(linetype) == 1 && linetype %in% 1:8)
            linetype})),
          as.character(substitute(arg))
        )
      ))
    )
  )
}

set_border_linetype_str_fun <- function(arg) {
  as.function(
    c(alist(linetype  = c("blank", "solid", "dashed", "dotted", "dotdash", "longdash", "twodash")),
      as.call(c(
        quote(ggplot2::theme),
        setNames(alist(element_rect(
          linetype  = match.arg(linetype))),
          as.character(substitute(arg))
        )
      ))
    )
  )
}

set_border_linetype_hex_fun <- function(arg) {
  as.function(
    c(alist(linetype  = NULL),
      as.call(c(
        quote(ggplot2::theme),
        setNames(alist(element_rect(
          linetype  = {
            stopifnot(is.character(linetype) && length(linetype) == 1)
            linetype})),
          as.character(substitute(arg))
        )
      ))
    )
  )
}

set_border_linetype_fun <- function(arg) {
  eval(substitute(
    list(by_num = set_border_linetype_int_fun(arg),
         by_name = set_border_linetype_str_fun(arg),
         by_hex_digits = set_border_linetype_hex_fun(arg))))
}


##  LINE

color_line_fun <- function(arg) {
  as.function(
    c(alist(color = NULL),
      as.call(c(
        quote(ggplot2::theme),
        setNames(alist(element_line(
          color = color)),
          as.character(substitute(arg))
        )
      ))
    )
  )
}

resize_line_fun <- function(arg) {
  as.function(
    c(alist(size = NULL),
      as.call(c(
        quote(ggplot2::theme),
        setNames(alist(element_line(
          size = size)),
          as.character(substitute(arg))
        )
      ))
    )
  )
}

set_linetype_int_fun <- function(arg) {
  as.function(
    c(alist(linetype  = NULL),
      as.call(c(
        quote(ggplot2::theme),
        setNames(alist(element_line(
          linetype  = {
            stopifnot(is.numeric(linetype) && length(linetype) == 1 && linetype %in% 1:8)
            linetype})),
          as.character(substitute(arg))
        )
      ))
    )
  )
}

set_linetype_str_fun <- function(arg) {
  as.function(
    c(alist(linetype  = c("blank", "solid", "dashed", "dotted", "dotdash", "longdash", "twodash")),
      as.call(c(
        quote(ggplot2::theme),
        setNames(alist(element_line(
          linetype  = match.arg(linetype))),
          as.character(substitute(arg))
        )
      ))
    )
  )
}

set_linetype_hex_fun <- function(arg) {
  as.function(
    c(alist(linetype  = NULL),
      as.call(c(
        quote(ggplot2::theme),
        setNames(alist(element_line(
          linetype  = {
            stopifnot(is.character(linetype) && length(linetype) == 1)
            linetype})),
          as.character(substitute(arg))
        )
      ))
    )
  )
}

set_linetype_fun <- function(arg) {
  eval(substitute(
  list(by_num = set_linetype_int_fun(arg),
       by_name = set_linetype_str_fun(arg),
       by_hex_digits = set_linetype_hex_fun(arg))))
}

set_lineend_fun <- function(arg) {
  as.function(
    c(alist(lineend  = c("butt", "round", "square")),
      as.call(c(
        quote(ggplot2::theme),
        setNames(alist(element_line(
          lineend  = match.arg(lineend))),
          as.character(substitute(arg))
        )
      ))
    )
  )
}

set_arrow_fun <- function(arg) {
  as.function(
    c(alist(angle = 30, length = grid::unit(0.25, "inches"),
            ends = c("last", "first","both"), type = c("open", "closed")),
      as.call(c(
        quote(ggplot2::theme),
        setNames(alist(element_line(arrow = grid::arrow(
          angle, length, ends = match.arg(ends), type = match.arg(type)))),
          as.character(substitute(arg))
        )
      ))
    )
  )
}


####################################
# TEXT

set_font_family_fun <- function(arg) {
  as.function(
    c(alist(family = NULL),
      as.call(c(
        quote(ggplot2::theme),
        setNames(alist(element_text(
          family = family)),
          as.character(substitute(arg))
        )
      ))
    )
  )
}

set_font_face_fun <- function(arg) {
  as.function(
    c(alist(face = c("plain", "italic", "bold", "bold.italic")),
      as.call(c(
        quote(ggplot2::theme),
        setNames(alist(element_text(
          face = match.arg(face))),
          as.character(substitute(arg))
        )
      ))
    )
  )
}

set_font_color_fun <- function(arg) {
  as.function(
    c(alist(color = NULL),
      as.call(c(
        quote(ggplot2::theme),
        setNames(alist(element_text(
          color = color)),
          as.character(substitute(arg))
        )
      ))
    )
  )
}

resize_text_fun <- function(arg) {
  as.function(
    c(alist(size = NULL),
      as.call(c(
        quote(ggplot2::theme),
        setNames(alist(element_text(
          size = size)),
          as.character(substitute(arg))
        )
      ))
    )
  )
}

allign_text_fun <- function(arg) {
  as.function(
    c(alist(hjust = NULL, vjust = NULL),
      as.call(c(
        quote(ggplot2::theme),
        setNames(alist(element_text(
          hjust = hjust, vjust = vjust)),
          as.character(substitute(arg))
        )
      ))
    )
  )
}


rotate_text_fun <- function(arg) {
  as.function(
    c(alist(angle = NULL),
      as.call(c(
        quote(ggplot2::theme),
        setNames(alist(element_text(
          angle = angle)),
          as.character(substitute(arg))
        )
      ))
    )
  )
}


set_text_lineheight_fun <- function(arg) {
  as.function(
    c(alist(lineheight  = NULL),
      as.call(c(
        quote(ggplot2::theme),
        setNames(alist(element_text(
          lineheight = lineheight )),
          as.character(substitute(arg))
        )
      ))
    )
  )
}

set_text_margin_fun <- function(arg) {
  as.function(
    c(alist(t = 0, r = 0, b = 0, l = 0, unit = "pt"),
      as.call(c(
        quote(ggplot2::theme),
        setNames(alist(element_text(
          margin = margin(t, r, b, l, unit))),
          as.character(substitute(arg))
        )
      ))
    )
  )
}



text_generic_fun <- function(fun){
list(
  all_text = fun(text),
  all_titles = fun(axis.title),
  plot = list(
    title = fun(plot.title),
    subtitle = fun(plot.subtitle),
    caption = fun(plot.caption),
    tag_label = fun(plot.tag)),
  axis = list(
    all_text = fun(axis.text),
    x = list(
      all = list(
        titles = fun(axis.title.x),
        text= fun(axis.text.x)
      ),
      top = list(
        title = fun(axis.title.x.top),
        text = fun(axis.text.x.top)
      ),
      bottom = list(
        title = fun(axis.title.x.bottom),
        text = fun(axis.text.x.bottom))),
    y = list(
      all = list(
        titles = fun(axis.title.y),
        text = fun(axis.text.y)
      ),
      left = list(
        title = fun(axis.title.y.left),
        text = fun(axis.text.y.left)
      ),
      right = list(
        title = fun(axis.title.y.right),
        text = fun(axis.text.y.right))
    )
  ),
  legend = list(
    text = fun(legend.text),
    title = fun(legend.title)
  ),
  facet_strip_text = list(
    all = fun(strip.text),
    x = fun(strip.text.x),
    y = fun(strip.text.y)
  ))
}


