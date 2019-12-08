# we can put fill AND color functions under color
#' @rdname ggset
#' @export
ggdo <- list(
  # element_rect(fill=)
  fill = list(
    all_rect = fill_fun(rect),
    legend = fill_fun(legend.background),
    legend_key = fill_fun(legend.key),
    legend_box = fill_fun(legend.box.background),
    plot = fill_fun(plot.background),
    # panel_border = fill_fun(panel.border), # doc says should be used with fill = NA, so not used here
    facet_strip = list(
      all = fill_fun(strip.background),
      x = fill_fun(strip.background.x),
      y = fill_fun(strip.background.y))
  ),
  # element_rect(colour/color=)
  color = list(
    border = list(
      all_rect = color_border_fun(rect),
      legend = color_border_fun(legend.background),
      legend_key = color_border_fun(legend.key),
      box = color_border_fun(legend.box.background),
      plot = color_border_fun(plot.background),
      panel = color_border_fun(panel.border), # doc says should be used with fill = NA, so not used here
      facet_strip = list(
        all = color_border_fun(strip.background),
        x = color_border_fun(strip.background.x),
        y = color_border_fun(strip.background.y))
    ),
    # element_line(color=)
    grid = list(
      all = color_line_fun(panel.grid),
      all_major = color_line_fun(panel.grid.major),
      major_x = color_line_fun(panel.grid.major.x),
      major_y = color_line_fun(panel.grid.major.y),
      all_minor = color_line_fun(panel.grid.minor),
      minor_x = color_line_fun(panel.grid.minor.x),
      minor_y = color_line_fun(panel.grid.minor.y)),
    axes_ticks = list(
      all = color_line_fun(axis.ticks),
      all_x = color_line_fun(axis.ticks.x),
      top = color_line_fun(axis.ticks.x),
      bottom = color_line_fun(axis.ticks.x),
      all_y = color_line_fun(axis.ticks.y),
      left = color_line_fun(axis.ticks.y),
      right = color_line_fun(axis.ticks.y))
  ),
  # element_rect(size=)
  resize = list(
    border = list(
      all_rect = resize_border_fun(rect),
      legend = resize_border_fun(legend.background),
      legend_key = resize_border_fun(legend.key),
      legend_box = resize_border_fun(legend.box.background),
      plot = resize_border_fun(plot.background),
      panel = resize_border_fun(panel.border), # doc says should be used with fill = NA, so not used here
      facet_strip = list(
        all = resize_border_fun(strip.background),
        x = resize_border_fun(strip.background.x),
        y = resize_border_fun(strip.background.y))),
    grid = list(
      all = resize_line_fun(panel.grid),
      all_major = resize_line_fun(panel.grid.major),
      major_x = resize_line_fun(panel.grid.major.x),
      major_y = resize_line_fun(panel.grid.major.y),
      all_minor = resize_line_fun(panel.grid.minor),
      minor_x = resize_line_fun(panel.grid.minor.x),
      minor_y = resize_line_fun(panel.grid.minor.y)),
    axes_ticks = list(
      all = resize_line_fun(axis.ticks),
      all_x = resize_line_fun(axis.ticks.x),
      top = resize_line_fun(axis.ticks.x),
      bottom = resize_line_fun(axis.ticks.x),
      all_y = resize_line_fun(axis.ticks.y),
      left = resize_line_fun(axis.ticks.y),
      right = resize_line_fun(axis.ticks.y))


  ),
  # element_rect(linetype=)
  set_line_type = list(
    border=list(
      all_rect = set_border_linetype_fun(rect),
      legend = set_border_linetype_fun(legend.background),
      legend_key = set_border_linetype_fun(legend.key),
      legend_box = set_border_linetype_fun(legend.box.background),
      plot = set_border_linetype_fun(plot.background),
      panel = set_border_linetype_fun(panel.border),
      facet_strip = list(
        all = set_border_linetype_fun(strip.background),
        x = set_border_linetype_fun(strip.background.x),
        y = set_border_linetype_fun(strip.background.y))
    ),
    grid = list(
      all =  set_linetype_fun(panel.grid),
      all_major =  set_linetype_fun(panel.grid.major),
      major_x =  set_linetype_fun(panel.grid.major.x),
      major_y =  set_linetype_fun(panel.grid.major.y),
      all_minor =  set_linetype_fun(panel.grid.minor),
      minor_x =  set_linetype_fun(panel.grid.minor.x),
      minor_y =  set_linetype_fun(panel.grid.minor.y)),
    axes_ticks = list(
      all =  set_linetype_fun(axis.ticks),
      all_x =  set_linetype_fun(axis.ticks.x),
      top =  set_linetype_fun(axis.ticks.x),
      bottom =  set_linetype_fun(axis.ticks.x),
      all_y =  set_linetype_fun(axis.ticks.y),
      left =  set_linetype_fun(axis.ticks.y),
      right =  set_linetype_fun(axis.ticks.y))
  ),
  set_lineend = list(
    # element_line(lineend=)
    grid = list(
      all =  set_lineend_fun(panel.grid),
      all_major =  set_lineend_fun(panel.grid.major),
      major_x =  set_lineend_fun(panel.grid.major.x),
      major_y =  set_lineend_fun(panel.grid.major.y),
      all_minor =  set_lineend_fun(panel.grid.minor),
      minor_x =  set_lineend_fun(panel.grid.minor.x),
      minor_y =  set_lineend_fun(panel.grid.minor.y)),
    axes_ticks = list(
      all =  set_lineend_fun(axis.ticks),
      all_x =  set_lineend_fun(axis.ticks.x),
      top =  set_lineend_fun(axis.ticks.x),
      bottom =  set_lineend_fun(axis.ticks.x),
      all_y =  set_lineend_fun(axis.ticks.y),
      left =  set_lineend_fun(axis.ticks.y),
      right =  set_lineend_fun(axis.ticks.y))),
  set_arrow = list(
    # element_line(arrow=)
    grid = list(
      all =  set_arrow_fun(panel.grid),
      all_major =  set_arrow_fun(panel.grid.major),
      major_x =  set_arrow_fun(panel.grid.major.x),
      major_y =  set_arrow_fun(panel.grid.major.y),
      all_minor =  set_arrow_fun(panel.grid.minor),
      minor_x =  set_arrow_fun(panel.grid.minor.x),
      minor_y =  set_arrow_fun(panel.grid.minor.y)),
    axes_ticks = list(
      all =  set_arrow_fun(axis.ticks),
      all_x =  set_arrow_fun(axis.ticks.x),
      top =  set_arrow_fun(axis.ticks.x),
      bottom =  set_arrow_fun(axis.ticks.x),
      all_y =  set_arrow_fun(axis.ticks.y),
      left =  set_arrow_fun(axis.ticks.y),
      right =  set_arrow_fun(axis.ticks.y))),
  # set_grid_linetype
  # set_axes_tick_lineend
  # set_grid_lineend
  # set_axes_tick_arrow
  # set_grid_arrow
  set_text = list(
    font_family = text_generic_fun(set_font_family_fun),
    font_face = text_generic_fun(set_font_face_fun),
    color = text_generic_fun(set_font_color_fun),
    size = text_generic_fun(resize_text_fun),
    allignment = text_generic_fun(allign_text_fun),
    angle = text_generic_fun(rotate_text_fun),
    lineheight = text_generic_fun(set_text_lineheight_fun),
    margin = text_generic_fun(set_text_margin_fun)
  )
)
