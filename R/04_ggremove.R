#' @rdname ggset
#' @export
ggremove <- list(
  all_lines = blank_fun(line),
  all_rect = blank_fun(rect),
  all_text = blank_fun(text),
  aspect_ratio = null_fun(aspect_ratio),
  axis = list(
    title = list(
      all = blank_fun(axis.title),
      x = list(
        all = blank_fun(axis.title.x),
        top = blank_fun(axis.title.x.top),
        bottom = blank_fun(axis.title.x.bottom)),

      y = list(
        all = blank_fun(axis.title.y),
        left = blank_fun(axis.title.y.left),
        right = blank_fun(axis.title.y.right))
    ),
    text = list(
      all = blank_fun(axis.text),
      x = list(
        all = blank_fun(axis.text.x),
        top = blank_fun(axis.text.x.top),
        bottom = blank_fun(axis.text.x.bottom)),

      y = list(
        all = blank_fun(axis.text.y),
        left = blank_fun(axis.text.y.left),
        right = blank_fun(axis.text.y.right))
    ),
    axis_ticks = list(
      all = blank_fun(axis.ticks, axis.ticks.length),
      x = list(
        all = blank_fun(axis.ticks.x, axis.ticks.length.x),
        top = blank_fun(axis.ticks.x, axis.ticks.length.x.top),
        bottom = blank_fun(axis.ticks.x, axis.ticks.length.x.bottom)),

      y = list(
        all = blank_fun(axis.ticks.y, axis.ticks.length.y),
        left = blank_fun(axis.ticks.y, axis.ticks.length.y.left),
        right = blank_fun(axis.ticks.y, axis.ticks.length.y.right))
    ),
    line = list(
      all = blank_fun(axis.line),
      x = list(
        all = blank_fun(axis.line.x),
        top = blank_fun(axis.line.x.top),
        bottom = blank_fun(axis.line.x.bottom)),

      y = list(
        all = blank_fun(axis.line.y),
        left = blank_fun(axis.line.y.left),
        right = blank_fun(axis.line.y.right))
    )
  ),
  legend = list(
    all = legend_none_fun(),
    background = blank_fun(legend.background),
    margin = null_fun(legend.margin),
    spacing = list(
      all = null_fun(legend.spacing),
      x = null_fun(legend.spacing.x),
      y = null_fun(legend.spacing.y)
    ),
    key = list(
      background = blank_fun(legend.key),
      size = null_fun(legend.key.size),
      height = null_fun(legend.key.height),
      width = null_fun(legend.key.width)
    ),
    text = blank_fun(legend.text, legend.text.align),
    title = blank_fun(legend.title, legend.title.align),
    position = null_fun(legend.position),
    direction = null_fun(legend.direction),
    justification = null_fun(legend.justification),
    box = list(
      arrangement = null_fun(legend.box),
      justification = null_fun(legend.box.just),
      margin = null_fun(legend.box.margin),
      background = blank_fun(legend.box.background),
      spacing = null_fun(legend.box.spacing)
    )
  ),
  panel= list(
    background = blank_fun(panel.background),
    border = blank_fun(panel.border),
    spacing = list(
      all = null_fun(panel.spacing),
      x = null_fun(panel.spacing.x),
      y = null_fun(panel.spacing.y)
    ),
    grid = list(
      all = blank_fun(panel.grid),
      major = list(
        all = blank_fun(panel.grid.major),
        x = blank_fun(panel.grid.major.x),
        y = blank_fun(panel.grid.major.y)
      ),
      minor = list(
        all = blank_fun(panel.grid.minor),
        x = blank_fun(panel.grid.minor.x),
        y = blank_fun(panel.grid.minor.y)
      )
    ),
    on.top = null_fun(panel.ontop)
  ),
  plot = list(
    background = blank_fun(plot.background),
    title = blank_fun(plot.title),
    subtitle = blank_fun(plot.subtitle),
    caption = blank_fun(plot.caption),
    tag = list(
      label = blank_fun(plot.tag),
      position_as_string = null_fun(
        plot.position),
      position_as_coord = null_fun(plot.position)),
    margin = null_fun(plot.margin)
  ),
  facet_strip = list(
    background = list(
      all = blank_fun(strip.background),
      x = blank_fun(strip.background.x),
      y = blank_fun(strip.background.y)),
    placement = null_fun(strip.placement),
    text = list(
      all = blank_fun(strip.text),
      x = blank_fun(strip.text.x),
      y = blank_fun(strip.text.y)
    ),
    pad_if_switched = list(
      grid = null_fun(strip.switch.pad.grid),
      wrap = null_fun(strip.switch.pad.wrap))
  )
)
