hs.window.animationDuration = 0

hs.hotkey.bind({ "cmd", "alt" }, "A", function()
	local screen = "Color LCD"

	local center1 = hs.geometry.rect(0.008, 0.025, 0.985, 0.95)
	local center2 = hs.geometry.rect(0.05, 0.10, 0.90, 0.80)
	local center3 = hs.geometry.rect(0.125, 0.20, 0.75, 0.60)

	hs.layout.apply({
		{ "Code", nil, screen, center1, nil, nil },
		{ "iTerm2", nil, screen, center1, nil, nil },
		{ "WezTerm", nil, screen, center1, nil, nil },
		{ "Xcode", nil, screen, center1, nil, nil },
		{ "Postico", nil, screen, center2, nil, nil },
		{ "Safari", nil, screen, center1, nil, nil },
		{ "Firefox", nil, screen, center1, nil, nil },
		{ "Google Chrome", nil, screen, center1, nil, nil },
		{ "Telegram", nil, screen, center3, nil, nil },
	})
end)
