hs.window.animationDuration = 0

hs.hotkey.bind({"cmd", "alt"}, "A", function()
  local screen = "Color LCD"
  local rect = hs.geometry.rect(0.015, 0.025, 0.97, 0.95)
  
  hs.layout.apply({
    {"Code", nil, screen, rect, nil, nil},
    {"iTerm2", nil, screen, rect, nil, nil},
    {"Safari", nil, screen, rect, nil, nil},
    {"Firefox", nil, screen, rect, nil, nil},
    {"Google Chrome", nil, screen, rect, nil, nil},
  })
end)
