local colors = {
  bg        = "#1F1F28",
  fg        = "#DCD7BA",
  border    = "#54546D",
  selection = "#363C32",
  muted     = "#727169",

  green     = "#98BB6C",
  yellow    = "#E6C384",
  orange    = "#FFA066",
  red       = "#E82424",
  cyan      = "#7FB4CA",
}

local function highlights()
  local hl = vim.api.nvim_set_hl

  -- Completion menu
  hl(0, "BlinkCmpMenu", {
    fg = colors.fg,
    bg = colors.bg,
  })

  hl(0, "BlinkCmpMenuBorder", {
    fg = colors.border,
    bg = colors.bg,
  })

  hl(0, "BlinkCmpMenuSelection", {
    fg = colors.fg,
    bg = colors.selection,
    bold = true,
  })

  -- Documentation window
  hl(0, "BlinkCmpDoc", {
    fg = colors.fg,
    bg = colors.bg,
  })

  hl(0, "BlinkCmpDocBorder", {
    fg = colors.border,
    bg = colors.bg,
  })

    hl(0, "BlinkCmpLabel", {
      fg = colors.fg,
      bg = colors.bg,
    })

    hl(0, "BlinkCmpLabelMatch", {
      fg = colors.yellow,
      bg = colors.bg,
      bold = true,
    })

  hl(0, "BlinkCmpLabelDescription", {
    fg = colors.muted,
  })

  hl(0, "BlinkCmpSource", {
    fg = colors.muted,
  })
  -- Remove unwanted blue backgrounds
hl(0, "BlinkCmpLabelDetail", {
  fg = colors.muted,
  bg = colors.bg,
})

hl(0, "BlinkCmpLabelDescription", {
  fg = colors.muted,
  bg = colors.bg,
})

hl(0, "BlinkCmpLabelDeprecated", {
  fg = colors.fg,
  bg = colors.bg,
})

  -- Completion kinds
  hl(0, "BlinkCmpKindFunction", {
    fg = colors.green,
  })

  hl(0, "BlinkCmpKindMethod", {
    fg = colors.green,
  })

  hl(0, "BlinkCmpKindVariable", {
    fg = colors.yellow,
  })

  hl(0, "BlinkCmpKindKeyword", {
    fg = colors.orange,
  })

  hl(0, "BlinkCmpKindClass", {
    fg = colors.orange,
  })

  hl(0, "BlinkCmpKindProperty", {
    fg = colors.orange,
  })

  hl(0, "BlinkCmpKindConstant", {
    fg = colors.red,
  })

  -- Ghost text
  hl(0, "BlinkCmpGhostText", {
    fg = colors.muted,
    italic = true,
  })
end

highlights()

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = highlights,
})

