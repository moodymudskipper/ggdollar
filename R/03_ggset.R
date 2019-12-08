#' Set components of a ggplot object
#'
#' `ggset` and `ggdo` are both nested lists of functions to help setting ggplot
#' themes more intuitively.
#'
#' `ggset` lets you dig to the element you want to change,
#'   and apply those changes, so that `ggset$panel$background(fill = "blue")` is the same as
#'   `theme(panel.background = element_rec(fill = "blue"))`. The arguments are
#'   most of the time ultimately forwarded to an `element_*()` function and you can
#'   change many attributes of a component at once. `?margin` will provide the
#'   description of most parameters.
#'
#' `ggdo` on the other hands starts from the action you want to perform, so that
#'   the equivalent to the above would be `ggdo$fill_background$panel("red")`.
#'   Typically with `ggdo` we set a single or a couple of attributes at once.
#'
#' `ggremove` is like `ggset` but helps removing components, it sets the relevant
#' `theme()` arguments to either `element_blank()` or `NULL`,
#' so `ggremove$panel$background()` is the same as `theme(panel.background = element_blank())`
#'
#' There would have been many other ways to organize these lists and we went for
#' an partially arbitrary reorganization rather than a fully systematic one.
#'
#' @return a `theme` object
#' @export
#'
#' @name ggset
ggset <- list(
  all_lines = line_fun(line),
  all_rect = rect_fun(rect),
  all_text = text_fun(text),
  aspect_ratio = simple_arg_fun(aspect_ratio),
  axis = list(
    title = list(
      all = text_fun(axis.title),
      x = list(
        all = text_fun(axis.title.x),
        top = text_fun(axis.title.x.top),
        bottom = text_fun(axis.title.x.bottom)),

      y = list(
        all = text_fun(axis.title.y),
        left = text_fun(axis.title.y.left),
        right = text_fun(axis.title.y.right))
    ),
    text = list(
      all = text_fun(axis.text),
      x = list(
        all = text_fun(axis.text.x),
        top = text_fun(axis.text.x.top),
        bottom = text_fun(axis.text.x.bottom)),

      y = list(
        all = text_fun(axis.text.y),
        left = text_fun(axis.text.y.left),
        right = text_fun(axis.text.y.right))
    ),
    axis_ticks = list(
      all = line_fun(axis.ticks, axis.ticks.length),
      x = list(
        all = line_fun(axis.ticks.x, axis.ticks.length.x),
        top = line_fun(axis.ticks.x, axis.ticks.length.x.top),
        bottom = line_fun(axis.ticks.x, axis.ticks.length.x.bottom)),

      y = list(
        all = line_fun(axis.ticks.y, axis.ticks.length.y),
        left = line_fun(axis.ticks.y, axis.ticks.length.y.left),
        right = line_fun(axis.ticks.y, axis.ticks.length.y.right))
    ),
    line = list(
      all = line_fun(axis.line),
      x = list(
        all = line_fun(axis.line.x),
        top = line_fun(axis.line.x.top),
        bottom = line_fun(axis.line.x.bottom)),

      y = list(
        all = line_fun(axis.line.y),
        left = line_fun(axis.line.y.left),
        right = line_fun(axis.line.y.right))
    )
  ),
  legend = list(
    background = rect_fun(legend.background),
    margin = margin_fun(legend.margin),
    spacing = list(
      all = unit_fun(legend.spacing),
      x = unit_fun(legend.spacing.x),
      y = unit_fun(legend.spacing.y)
    ),
    key = list(
      background = rect_fun(legend.key),
      size = unit_fun(legend.key.size),
      height = unit_fun(legend.key.height),
      width = unit_fun(legend.key.width)
    ),
    text = text_fun(legend.text, legend.text.align),
    title = text_fun(legend.title, legend.title.align),
    position = simple_arg_fun(legend.position, c("none", "left", "right", "bottom", "top")),
    direction = simple_arg_fun(legend.direction, c("horizontal","vertical")),
    justification = simple_arg_fun(legend.justification),
    box = list(
      arrangement = simple_arg_fun(legend.box, c("horizontal","vertical")),
      justification = simple_arg_fun(legend.box.just, c("top", "bottom", "left", "right")),
      margin = margin_fun(legend.box.margin),
      background = rect_fun(legend.box.background),
      spacing = unit_fun(legend.box.spacing)
    )
  ),
  panel= list(
    background = rect_fun(panel.background),
    border = rect_fun(panel.border),
    spacing = list(
      all = unit_fun(panel.spacing),
      x = unit_fun(panel.spacing.x),
      y = unit_fun(panel.spacing.y)
    ),
    grid = list(
      all = line_fun(panel.grid),
      major = list(
        all = line_fun(panel.grid.major),
        x = line_fun(panel.grid.major.x),
        y = line_fun(panel.grid.major.y)
      ),
      minor = list(
        all = line_fun(panel.grid.minor),
        x = line_fun(panel.grid.minor.x),
        y = line_fun(panel.grid.minor.y)
      )
    ),
    on.top = simple_arg_fun(panel.ontop)
  ),
  plot = list(
    background = rect_fun(plot.background),
    title = text_fun(plot.title),
    subtitle = text_fun(plot.subtitle),
    caption = text_fun(plot.caption),
    tag = list(
      label = text_fun(plot.tag),
      position_as_string = simple_arg_fun(
        plot.position, c("topleft", "top", "topright", "left", "right",
                           "bottomleft", "bottom", "bottomright")),
      position_as_coord = simple_arg_fun(plot.position)),
    margin = margin_fun(plot.margin)
  ),
  facet_strip = list(
    background = list(
      all = rect_fun(strip.background),
      x = rect_fun(strip.background.x),
      y = rect_fun(strip.background.y)),
    placement = simple_arg_fun(strip.placement, c("inside", "outside")),
    text = list(
      all = text_fun(strip.text),
      x = text_fun(strip.text.x),
      y = text_fun(strip.text.y)
    ),
    pad_if_switched = list(
      grid = unit_fun(strip.switch.pad.grid),
      wrap = unit_fun(strip.switch.pad.wrap))
  )
)
